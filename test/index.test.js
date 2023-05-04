import request from "supertest"
import { app } from "../app.js"


describe("1. unit test", () => {
    it('respond with content', (done) => {
        request(app).get('/users')
            .set('Accept', 'application/json')
            .expect('Content-Type', /json/)
            .expect(200, done)
    })
})

