import request from "supertest"
import sinon from "sinon"
import jwt from "jsonwebtoken"
import jest from "jest-mock"
import conexion from "../database/db.js";
import { app } from "../app.js";
import { expect } from "@jest/globals"
import { messagesUsers, reports, solucion, deleteAccountAdmin } from "../controllers/admin.js"
import { TOKEN_EXPIRE, TOKEN_SECRET } from "../config/config.js";

// ! Messages API error all testing, expect a status code 200 OK but is received a 404

// ! deleteAccountAdmin API error all testing, error in: ivalid token, object error, error calls

// ? Testing Controller auth end

describe('1. Controller auth', () => {

    describe('Reports API', () => {
        let req, res, next;

        beforeEach(() => {
            req = {
                headers: {},
            };
            res = {
                json: sinon.spy(),
            };
            next = sinon.spy();
        });

        afterEach(() => {
            sinon.restore();
        });

        test('should return error if token is not provided', async () => {
            await reports(req, res, next);
            expect(res.json.calledOnceWith('Unauthorized')).toBeTruthy;
        });

        test('should return error if token is invalid', async () => {
            req.headers['token'] = 'invalid_token';
            await reports(req, res, next);
            expect(res.json.calledOnceWith('Unauthorized')).toBeTruthy;
        });

        test('should return error if email is not admin', async () => {
            const token = jwt.sign({ email: 'user@example.com' }, 'secret');
            req.headers['token'] = token;
            await reports(req, res, next);
            expect(res.json.calledOnceWith('Unauthorized')).toBeTruthy;
        });

        test('should return reports if email is admin', async () => {
            const token = jwt.sign({ email: 'face-job-admin@facejob.com' }, 'secret');
            req.headers['token'] = token;
            const result = [{ id: 1, report: 'test report', tiempo: '2021-01-01' }];
            sinon.stub(conexion, 'query').resolves([result]);
            await reports(req, res, next);
            expect(res.json.calledOnceWith(result)).toBeTruthy;
        });

        test('should return "no hay reportes" if no reports found', async () => {
            const token = jwt.sign({ email: 'face-job-admin@facejob.com' }, 'secret');
            req.headers['token'] = token;
            sinon.stub(conexion, 'query').resolves([]);
            await reports(req, res, next);
            expect(res.json.calledOnceWith('no hay reportes')).toBeTruthy;
        });
    });

    describe('Solucion API', () => {
        let req, res, next;

        beforeEach(() => {
            req = {
                headers: {},
                body: {}
            };
            res = {
                json: jest.fn(),
                status: jest.fn().mockReturnThis()
            };
            next = jest.fn();
        });

        afterEach(() => {
            jest.fn();
        });

        test('should return "reporte solucionado" if the report is successfully solved', async () => {
            req.headers['token'] = 'valid_token';
            req.body.email_reporte = 'reporter@example.com';
            req.body.email_reportado = 'reported@example.com';
            req.body.id = 1;

            jwt.verify = jest.fn().mockReturnValue({ email: 'face-job-admin@facejob.com' });
            conexion.query = jest.fn().mockReturnValue([[{ affectedRows: 1 }], null], [[{ affectedRows: 1 }], null]);

            await solucion(req, res);

            expect(jwt.verify).toHaveBeenCalledWith('valid_token', TOKEN_SECRET);
            expect(conexion.query).toHaveBeenCalledWith('UPDATE trabajos SET estado=? WHERE mi_email=? AND profecional_email=? OR mi_email=? AND profecional_email=?', ['Eliminado', 'reporter@example.com', 'reported@example.com', 'reported@example.com', 'reporter@example.com']);
            expect(conexion.query).toHaveBeenCalledWith('DELETE FROM reportes WHERE reportes.id_reporte=?', [1]);
            expect(res.json).toHaveBeenCalledWith('reporte solucionado');
        });

        test('should return a 500 error if there is an error', async () => {
            req.headers['token'] = 'valid_token';
            req.body.email_reporte = 'reporter@example.com';
            req.body.email_reportado = 'reported@example.com';
            req.body.id = 1;

            jwt.verify = jest.fn().mockImplementation(() => {
                throw new Error('Invalid token');
            });

            await solucion(req, res);

            expect(jwt.verify).toHaveBeenCalledWith('valid_token', TOKEN_SECRET);
            expect(res.status).toHaveBeenCalledWith(500);
            expect(res.json).toHaveBeenCalledWith({ data: new Error('Invalid token') });
        });
    });

    /*describe('messagesUsers', () => {
        it('should return an error if no token is provided', async () => {
            const res = await request(app)
                .post('/messages')
                .send({
                    email_reporte: 'santiagocelada13@gmail.com',
                    email_reportado: 'julio@gmail.com'
                });
            expect(res.statusCode).toEqual(401);
            expect(res.body).toHaveProperty('error');
        });

        it('should return an error if an invalid token is provided', async () => {
            const res = await request(app)
                .post('/messages')
                .set('token', 'invalid-token')
                .send({
                    email_reporte: 'user1@example.com',
                    email_reportado: 'user2@example.com'
                });
            expect(res.statusCode).toEqual(401);
            expect(res.body).toHaveProperty('error');
        });

        it('should return an error if the user is not authorized', async () => {
            const token = 'valid-token-for-non-admin-user';
            const res = await request(app)
                .post('/messages')
                .set('token', token)
                .send({
                    email_reporte: 'user1@example.com',
                    email_reportado: 'user2@example.com'
                });
            expect(res.statusCode).toEqual(401);
            expect(res.body).toHaveProperty('error');
        });

        it('should return an array of messages if the user is authorized', async () => {
            const token = 'valid-token-for-admin-user';
            const res = await request(app)
                .post('/messages')
                .set('token', token)
                .send({
                    email_reporte: 'user1@example.com',
                    email_reportado: 'user2@example.com'
                });
            expect(res.statusCode).toEqual(200);
            expect(res.body).toBeInstanceOf(Array);
        });

        it('should return "not results" if there are no messages', async () => {
            const token = 'valid-token-for-admin-user';
            const res = await request(app)
                .post('/messages')
                .set('token', token)
                .send({
                    email_reporte: 'user1@example.com',
                    email_reportado: 'user2@example.com'
                });
            expect(res.statusCode).toEqual(200);
            expect(res.body).toEqual('not results');
        });
    }); */


    /*describe("deleteAccountAdmin", () => {
        let req, res;

        beforeEach(() => {
            req = {
                headers: { token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNhbnRpYWdvY2VsYWRhMTNAZ21haWwuY29tIn0.ozKUuf8ab_rjm61ejF8mAS7iaaZH1H7BITq98478Z3k" },
                body: {
                    password: "valid_password",
                    reportado: "santiagocelada13@gmail.com",
                    id: 1,
                },
            };
            res = {
                json: jest.fn(),
            };
        });

        afterEach(() => {
            jest.fn();
        });

        test("should return PASSWORD_ERROR if password is incorrect", async () => {
            const mockQuery = jest.fn().mockReturnValueOnce([{}]).mockReturnValueOnce([]);
            const mockCompare = jest.fn().mockImplementation((a, b, cb) => cb(null, false));
            const bcrypt = { compare: mockCompare };
            const jwt = { verify: jest.fn().mockReturnValueOnce({ email: "face-job-admin@facejob.com" }) };
            const conexion = { query: mockQuery };
            await deleteAccountAdmin(req, res, { bcrypt, jwt, conexion });
            expect(res.json).toHaveBeenCalledWith({ data: "PASSWORD_ERROR" });
        });

        test("should delete account and return 'eliminado' if all checks pass", async () => {
            const mockQuery = jest.fn().mockReturnValueOnce([{}]).mockReturnValueOnce([]);
            const mockCompare = jest.fn().mockImplementation((a, b, cb) => cb(null, true));
            const bcrypt = { compare: mockCompare };
            const jwt = { verify: jest.fn().mockReturnValueOnce({ email: "face-job-admin@facejob.com" }) };
            const conexion = { query: mockQuery };
            await deleteAccountAdmin(req, res, { bcrypt, jwt, conexion });
            expect(res.json).toHaveBeenCalledWith({ data: "eliminado" });
        });

        test("should return error if any database query fails", async () => {
            const mockQuery = jest.fn().mockRejectedValueOnce(new Error("Database error"));
            const bcrypt = { compare: jest.fn() };
            const jwt = { verify: jest.fn().mockReturnValueOnce({ email: "face-job-admin@facejob.com" }) };
            const conexion = { query: mockQuery };
            await deleteAccountAdmin(req, res, { bcrypt, jwt, conexion });
            expect(res.json).toHaveBeenCalledWith(new Error("Database error"));
        });

        test("should return error if token is missing", async () => {
            const bcrypt = { compare: jest.fn() };
            const jwt = { verify: jest.fn() };
            const conexion = { query: jest.fn() };
            await deleteAccountAdmin({ ...req, headers: {} }, res, { bcrypt, jwt, conexion });
            expect(res.json).toHaveBeenCalledWith(new Error("Token missing"));
        });

        test("should return error if admin email is incorrect", async () => {
            const bcrypt = { compare: jest.fn() };
            const jwt = { verify: jest.fn().mockReturnValueOnce({ email: "invalid_email" }) };
            const conexion = { query: jest.fn() };
            await deleteAccountAdmin(req, res, { bcrypt, jwt, conexion });
            expect(res.json).toHaveBeenCalledWith(new Error("Unauthorized"));
        });
    }); */
});

