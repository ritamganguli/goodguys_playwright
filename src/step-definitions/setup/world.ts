// import playwright, {Browser, BrowserContext, BrowserContextOptions, BrowserType, chromium, Page} from "playwright";
// import {IWorldOptions, setWorldConstructor, World} from "@cucumber/cucumber";
// import {env} from "../../env/parseEnv";
// import {GlobalConfig, GlobalVariables} from "../../env/global";
//
// export type Screen={
//     browser:Browser
//     context:BrowserContext
//     page:Page
// }
//
// export class ScenarioWorld extends World {
//
//     constructor(options:IWorldOptions) {
//         super(options);
//         this.globalConfig=options.parameters as GlobalConfig
//         this.globalVariables = {}
//
//     }
//     globalConfig: GlobalConfig
//     globalVariables: GlobalVariables;
//
//     screen!:Screen;
//
//    async init(contextOptions?: BrowserContextOptions): Promise<Screen> {
//               await this.screen?.page?.close();
//               await this.screen?.context?.close();
//               await this.screen?.browser?.close();
//               const browser = await this.newBrowser();
//               const context = await browser.newContext(contextOptions);
//               const page = await context.newPage();
//               this.screen = { browser, context, page };
//
//               return this.screen;
//            }
//
//     capabilities = {
//         browserName: 'Chrome', // Browsers allowed: `Chrome`, `MicrosoftEdge`, `pw-chromium`, `pw-firefox` and `pw-webkit`
//         browserVersion: 'latest',
//         'LT:Options': {
//             platform: "Windows 10",
//             build: 'Playwright HyperExecute Build',
//             name: 'Playwright HyperExecute Test',
//             user: 'ashasingh',
//             accessKey: 'rn0vEnokEIvNeBzIgUCTVDOXWhzQ3CvKr9eBDm8S9x7nPXIT0K',
//             // 'network': true,
//             video: true,
//             console: true,
//         },
//     };
//
//    private newBrowser = async (): Promise<Browser> => {
//                const automationBrowsers = ['chromium', 'firefox', 'webkit'];
//                type AutomationBrowser = typeof automationBrowsers[number];
//               const automationBrowser = env('UI_AUTOMATION_BROWSER') as AutomationBrowser;
//                     const browserType: BrowserType = playwright[automationBrowser];
//        if (false) {
//            // set false to run locally
//
//            return await chromium.connect({
//                wsEndpoint: `wss://cdp.lambdatest.com/playwright?capabilities=${encodeURIComponent(JSON.stringify(this.capabilities))}`,
//            });
//
//        } else {
//            return await browserType.launch({
//                headless: false,
//                args: ['--disable-web-security', '--disable-features=IsolateOrigins,site-per-process']
//
//            });
//
//
//        }}
//        }
//
// setWorldConstructor(ScenarioWorld)


/*
import { Browser, BrowserContext, BrowserContextOptions, Page, BrowserType } from '@playwright/test';
import { IWorldOptions, setWorldConstructor, World } from "@cucumber/cucumber";
import { GlobalConfig, GlobalVariables } from "../../env/global";

export type Screen = {
    browser: Browser
    context: BrowserContext
    page: Page
}
  const mobile=true;

export class ScenarioWorld extends World {

    constructor(options: IWorldOptions) {
        super(options);
        this.globalConfig = options.parameters as GlobalConfig;
        this.globalVariables = {};
    }

    globalConfig: GlobalConfig;
    globalVariables: GlobalVariables;
    screen!: Screen;


    async init(scenarioName: string, contextOptions?: BrowserContextOptions): Promise<Screen> {
        await this.screen?.page?.close();
        await this.screen?.context?.close();
        await this.screen?.browser?.close();

        // Set the scenario name in the capabilities
        this.capabilities['LT:Options'].name = scenarioName;

        const browser = await this.newBrowser();

        const context = await browser.newContext({
            viewport: { width: 1920, height: 1080 }, // Set a large enough viewport size
            ...contextOptions
        });

        const page = await context.newPage();
        this.screen = { browser, context, page };

        return this.screen;
    };


    capabilities = {
        browserName: process.env.browser, // Browsers allowed: `Chrome`, `MicrosoftEdge`, `pw-chromium`, `pw-firefox` and `pw-webkit`
        browserVersion: 'latest',
        'LT:Options': {
            platform: "Windows 10",
            build: 'Playwright HyperExecute Build',
            name: 'Playwright HyperExecute Test', // Default name
            user: 'ashasingh',
            accessKey: 'rn0vEnokEIvNeBzIgUCTVDOXWhzQ3CvKr9eBDm8S9x7nPXIT0K',
            video: true,
            console: true,
        },


    };




    private newBrowser = async (): Promise<Browser> => {
        const automationBrowsers = ['chromium', 'firefox', 'webkit'];
        type AutomationBrowser = typeof automationBrowsers[number];
        const automationBrowser: AutomationBrowser = 'chromium';
        const browserType: BrowserType = require('@playwright/test')[automationBrowser];
console.log(process.env.browser)
        if (true) { // Hardcoded to always run on LambdaTest true for lambdatest false for local
            return await browserType.connect({
                wsEndpoint: `wss://cdp.lambdatest.com/playwright?capabilities=${encodeURIComponent(JSON.stringify(this.capabilities))}`,
            });
        } else {
            return await browserType.launch({
                headless: false,
                args: ['--disable-web-security', '--disable-features=IsolateOrigins,site-per-process']
            });
        }
    }
}

setWorldConstructor(ScenarioWorld);*/

// File: src/step-definitions/setup/world.ts

import { Browser, BrowserContext, BrowserContextOptions, Page, BrowserType } from '@playwright/test';
import { IWorldOptions, setWorldConstructor, World } from "@cucumber/cucumber";
import { GlobalConfig, GlobalVariables } from "../../env/global";
const { _android } = require("playwright");

// Global variable to store the page instance
let globalPage: Page | null = null;

// Function to set the global page instance
export const setGlobalPage = (page: Page) => {
    globalPage = page;
};

// Function to get the global page instance
export const getGlobalPage = (): Page => {
    if (!globalPage) {
        throw new Error('Page is not initialized yet.');
    }
    return globalPage;
};

export type Screen = {
    browser: Browser | any;  // Updated to handle both Browser and Android device types
    context: BrowserContext | any; // Updated to handle both BrowserContext and Android device
    page: Page;
};

export class ScenarioWorld extends World {

    constructor(options: IWorldOptions) {
        super(options);
        this.globalConfig = options.parameters as GlobalConfig;
        this.globalVariables = {};
    }

    globalConfig: GlobalConfig;
    globalVariables: GlobalVariables;
    screen!: Screen;

    async init(scenarioName: string, contextOptions?: BrowserContextOptions): Promise<Screen> {
        // Close existing resources if any
        await this.screen?.page?.close();
        await this.screen?.context?.close();
        await this.screen?.browser?.close();

        // Set the scenario name in the capabilities
        this.capabilities['LT:Options'].name = scenarioName;

        const browser = await this.newBrowser(contextOptions);

        // Check if the returned object is an Android device
        if (browser._android) {
            // Special handling for Android scenarios
            const context = await browser._android.launchBrowser();
            const page = await context.newPage();
            this.screen = { browser: browser._android, context: browser._android, page }; // Set screen context to the Android device
            setGlobalPage(page); // Set the page globally
        } else {
            const context = await browser.newContext({
                viewport: { width: 1920, height: 1080 }, // Set a large enough viewport size
                ...contextOptions,
            });

            const page = await context.newPage();
            this.screen = { browser, context, page };
            setGlobalPage(page); // Set the page globally
        }

        return this.screen;
    }

    capabilities = {
        browserName: process.env.browser || 'Chrome', // Default to 'chromium' if not set
        browserVersion: 'latest',
        'LT:Options': {
            platform: "Windows 11",
            build: 'Playwright HyperExecute Build',
            name: 'Playwright HyperExecute Test', // Default name
            user: 'shubhamr',
            accessKey: 'dl8Y8as59i1YyGZZUeLF897aCFvIDmaKkUU1e6RgBmlgMLIIhh',
            video: true,
            console: true,
        },
    };

    private newBrowser = async (contextOptions?: BrowserContextOptions): Promise<Browser | any> => {
        const automationBrowsers = ['chromium', 'firefox', 'webkit'];
        type AutomationBrowser = typeof automationBrowsers[number];
        const automationBrowser: AutomationBrowser = 'chromium'; // Modify as needed or make dynamic
        const browserType: BrowserType = require('@playwright/test')[automationBrowser];

        // Check if it's an Android scenario based on context or capabilities
        if (this.isAndroidScenario()) {
            return await this.initializeAndroidDevice();
        } else if (this.isLambdaTest()) {
            return await browserType.connect({
                wsEndpoint: `ws://cdp.lambdatest.com/playwright?capabilities=${encodeURIComponent(JSON.stringify(this.capabilities))}`,
            });
        } else {
            return await browserType.launch({
                headless: false,
                args: ['--disable-web-security', '--disable-features=IsolateOrigins,site-per-process']
            });
        }
    };

    // Method to determine if it's an Android scenario
    private isAndroidScenario(): boolean {
        // Replace with actual condition to detect Android scenario
        return process.env.IS_ANDROID === 'true';
    }

    // Method to determine if it's running on LambdaTest
    private isLambdaTest(): boolean {
        // Replace with actual condition to check if it's running on LambdaTest
        return process.env.RUN_ON_LAMBDATEST === 'true';
    }

    // Method to initialize and connect to the Android device
    async initializeAndroidDevice() {
        const androidCapabilities = {
            "LT:Options": {
                "platformName": "android",
                "deviceName": "Galaxy Tab S9 Ultra",
                "platformVersion": "14",
                "isRealMobile": true,
                "build": "Playwright Android Build",
                "name": "Playwright Android Test",
                "user": 'shubhamr',
                "accessKey": 'dl8Y8as59i1YyGZZUeLF897aCFvIDmaKkUU1e6RgBmlgMLIIhh',
                "network": true
            },
        };

        const device = await _android.connect(
            `wss://cdp.lambdatest.com/playwright?capabilities=${encodeURIComponent(
                JSON.stringify(androidCapabilities)
            )}`
        );

        console.log(`Model: ${device.model()}, Serial: ${device.serial()}`);

        // Force stop Chrome on the Android device
        await device.shell("am force-stop com.android.chrome");

        // Return the connected Android device as part of the screen context
        return { _android: device };
    }
}

setWorldConstructor(ScenarioWorld);