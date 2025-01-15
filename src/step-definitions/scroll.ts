import {Then} from "@cucumber/cucumber";
import {ElementKey, PageId} from "../env/global";
import {ScenarioWorld} from "./setup/world";
import {waitFor} from "../support/wait-for-behavior";
import {getElementLocator} from "../support/web-element-helper";




Then(
    /^I scroll to the "([^"]*)"$/,
    async function (this: ScenarioWorld, elementKey: ElementKey){
        const {
            screen: { page },
            globalConfig,
        } = this;

        const elementIdentifier = getElementLocator(page, elementKey, globalConfig);
        const element = await page.waitForSelector(elementIdentifier);
        await element.scrollIntoViewIfNeeded();
    }
)