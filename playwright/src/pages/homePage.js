import { expect } from '@playwright/test';

export class HomePage {
    constructor(page) {
        this.page = page;
    }

    async message(locator, message) {
        await expect(this.page.locator(locator)).toBeVisible();
        await expect(this.page.locator(locator)).toHaveText(message);
    }
}