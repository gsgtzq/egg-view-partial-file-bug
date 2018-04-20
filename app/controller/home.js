'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {
  async index() {
    const { ctx } = this;
    return await ctx.render('index.html');
  }
}

module.exports = HomeController;
