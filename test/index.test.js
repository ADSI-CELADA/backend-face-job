import sinon from "sinon"
import jest from "jest-mock"
import request from "supertest"
import jwt from "jsonwebtoken"
import { expect } from "@jest/globals"
import { reports, solucion } from "../controllers/admin.js";
import conexion from "../database/db.js"
import { app } from "../app.js";
import { TOKEN_SECRET } from "../config/config.js"


describe('1. Controller Admin -> ', () => {

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

  



  


});
