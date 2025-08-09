import { test } from '@playwright/test';
import { LoginPage } from '../pages/loginPage';
import { HomePage } from '../pages/homePage';
import { home } from '../elements/homeElements';
import { login } from '../elements/loginElements';
import homeMessage from '../utils/messages/home.json';
import loginMessage from '../utils/messages/login.json';

test.describe('Login Tests', () => {
    let loginPage;
    let homePage; 

    test.beforeEach(async ({ page }) => {
        loginPage = new LoginPage(page);
        homePage = new HomePage(page);
        await loginPage.navigate();
    })

    test('Login successful @loginSuccess', async () => {
        await loginPage.login(process.env.EMAIL, process.env.PASSWORD);
        await homePage.message(home.toastSuccess, homeMessage.success);
    })

    test('Login with invalid email @invalidEmail', async () => {
        await loginPage.login(process.env.EMAIL_INVALID, process.env.PASSWORD);
        await loginPage.message(login.toastAlertError, loginMessage.invalidCredentials);
    })

    test('Login with invalid password @invalidPassword', async () => {
        await loginPage.login(process.env.EMAIL, process.env.PASSWORD_INVALID);
        await loginPage.message(login.toastAlertError, loginMessage.invalidCredentials);
    })

    test('Login with blank email @blankEmail', async () => {
        await loginPage.login("", process.env.PASSWORD);
        await loginPage.messageRequired(loginMessage.emailRequired);
    })

    test('Login with blank password @blankPassword', async () => {
        await loginPage.login(process.env.EMAIL, "");
        await loginPage.messageRequired(loginMessage.passRequired);
    })

    test('Login with blank fields @blankFields', async () => {
        await loginPage.login("", "");
        await loginPage.messagesErrors([loginMessage.emailRequired, loginMessage.passRequired]);
    })
})