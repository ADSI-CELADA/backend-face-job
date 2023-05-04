import sinon from "sinon"
import { expect } from "chai"
import { getAllUsers } from "../controllers/auths.js";

describe('getAllUsers', () => {
  let req, res, queryStub;

  beforeEach(() => {
    req = {};
    res = {
      json: sinon.spy()
    };
    queryStub = sinon.stub().resolves([{ id: 1, name: 'John' }, { id: 2, name: 'Jane' }]);
  });

  test('should return all users', async () => {
    const conexion = { query: queryStub };
    await getAllUsers(req, res, conexion);
    expect(res.json.calledOnce).to.be.true;
    expect(res.json.calledWith({ result: [{ id: 1, name: 'John' }, { id: 2, name: 'Jane' }] })).to.be.false;
  });

});