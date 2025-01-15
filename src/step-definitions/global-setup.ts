/*
import {Browser, chromium, Page } from "@playwright/test"

async function globalSetUp() {
    const Browser: Browser = await chromium.launch({ headless: false});
    const context = await Browser.newContext();
    const page: Page = await context.newPage();

    await page.goto("https://develop-001f7e53780cec791777.o2.myshopify.dev/")
    await page.fill("input[id='account_email']", "ashasingh@thegoodguys.com.au")
    await page.click("text=Continue with email")
    await page.fill("input[id='account_password']","Monday1298")
    await page.click("button[name='commit']")

    // Save the state of the webpage  - means we are logged in
    await page.context().storageState( { path: "./loginAuth.json" });
    await Browser.close();

}

export default globalSetUp;*/


// File: src/step-definitions/global-setup.ts

import { getGlobalPage } from '../../src/step-definitions/setup/world'; // Import the getGlobalPage function

async function globalSetUp() {
    // Retrieve the global page instance
    const page = getGlobalPage();

    // Perform the login steps
    await page.goto("https://develop-001f7e53780cec791777.o2.myshopify.dev/");
    await page.fill("input[id='account_email']", "ashasingh@thegoodguys.com.au");
    await page.click("text=Continue with email");
    await page.fill("input[id='account_password']", "Monday1298");
    await page.click("button[name='commit']");

    // Save the state of the webpage - means we are logged in
    await page.context().storageState({ path: "./loginAuth.json" });

    // Close the context and browser
    await page.context().close();
}

// Export the setup function
export default globalSetUp;