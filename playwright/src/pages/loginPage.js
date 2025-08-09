import { expect } from "@playwright/test";
import { login } from "../elements/loginElements.js";

export class LoginPage {
  constructor(page) {
    this.page = page;
  }

  async navigate() {
    await this.page.goto(process.env.PROD);
  }

  async login(mail, password) {
    if (mail !== null) {
      await this.page.fill(login.inputEmail, mail);
    }

    if (password !== null) {
      await this.page.fill(login.inputPassword, password);
    }

    await this.page.click(login.btnSubmit);
  }

  async message(locator, message) {
    await expect(this.page.locator(locator)).toBeVisible();
    await expect(this.page.locator(locator)).toHaveText(message);
  }

  async messageRequired(message) {
    await expect(this.page.locator(login.alertRequired)).toBeVisible();
    await expect(this.page.locator(login.alertRequired)).toHaveText(message);
  }

  async messagesErrors(messages) {
    expect(await this.page.locator(login.alertRequired).allTextContents()).toEqual(messages);
  }
}