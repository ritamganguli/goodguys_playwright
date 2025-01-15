import {Then} from "@cucumber/cucumber";
import {ScenarioWorld} from "./setup/world";
import {ElementKey} from "../env/global";
import {getElementLocator} from "../support/web-element-helper";
import { hoverElement } from "../support/html-behavior";

Then (
    /^I hover over "([^"]*)" (?:button|link|icon|element|name|trigger)$/,
    async function (this: ScenarioWorld, elementKey: ElementKey){
        const  {
            screen: { page },
            globalConfig,
        } = this

        console.log(` I hover over ${elementKey} (?:button|link|icon|element|trigger)`);
        const elementIdentifier = getElementLocator(page, elementKey, globalConfig)
        await hoverElement(page, elementIdentifier);

    }
)