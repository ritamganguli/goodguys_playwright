// import { Before,After,setDefaultTimeout, ITestCaseHookParameter}  from "@cucumber/cucumber";
// import {ScenarioWorld} from "./world";
// import {env, envNumber} from "../../env/parseEnv";
// import { ChromiumBrowser, FirefoxBrowser, WebKitBrowser} from "@playwright/test";
//
// //const DEFAULT_TIMEOUT=100000
// setDefaultTimeout(envNumber('SCRIPT_TIMEOUT'))
//
// let browser: ChromiumBrowser | FirefoxBrowser | WebKitBrowser;
// Before(async function (this: ScenarioWorld, scenario){
//     console.log(`Running cucumber Scenario ${scenario.pickle.name}`)
//     const contextOptions = {
//         recordVideo: {
//             dir: `${process.env.VIDEO_PATH}\\${scenario.pickle.name}`,
//         }
//     }
//         const ready = await this.init(contextOptions);
//         return ready;
//
// })
//
//
//
// After(async function ( this: ScenarioWorld, scenario){
//     const {
//         screen: {page, browser }
//     } = this
//
//     const scenarioStatus=scenario.result?.status
//
//     if(scenarioStatus=='FAILED'){
//         const screenshot= await page.screenshot({
//             path:`${process.env.SCREENSHOT_PATH}\\${scenario.pickle.name}.png`
//         })
//         this.attach(screenshot, 'image/png')
//     }
//     //await page.close()
//     await browser.close()
//     return browser
// })


import { Before, After, setDefaultTimeout, ITestCaseHookParameter } from "@cucumber/cucumber";
import { ScenarioWorld } from "./world";
import { ChromiumBrowser, FirefoxBrowser, WebKitBrowser } from "@playwright/test";

// Set default timeout from environment variables or a default value
setDefaultTimeout(500000); // Set a sensible default timeout

let browser: ChromiumBrowser | FirefoxBrowser | WebKitBrowser;

Before(async function (this: ScenarioWorld, scenario: ITestCaseHookParameter) {
    console.log(`Running cucumber Scenario ${scenario.pickle.name}`);

    // Define context options, including video recording settings
    const contextOptions = {};

    // Initialize the browser, context, and page
    const ready = await this.init(scenario.pickle.name, contextOptions);
    return ready;
});

After(async function (this: ScenarioWorld, scenario: ITestCaseHookParameter) {
    const { screen: { page, browser } } = this;
    const scenarioStatus = scenario.result?.status;
    await page.evaluate(_ => {}, `lambdatest_action: ${JSON.stringify({ action: 'setTestStatus', arguments: { status: 'passed'} })}`);

    if (scenarioStatus === 'FAILED') {
        await page.evaluate(_ => {}, `lambdatest_action: ${JSON.stringify({ action: 'setTestStatus', arguments: { status: 'failed'} })}`);
        // Take a screenshot if the scenario failed
        const screenshot = await page.screenshot({
            path: `./screenshots/${scenario.pickle.name}.png` // Make sure this path is accessible
        });
        this.attach(screenshot, 'image/png');

    }

    // Close the browser
    await browser.close();
    return browser;
});