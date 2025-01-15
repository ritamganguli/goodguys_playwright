import {Then} from "@cucumber/cucumber";
import {ElementKey} from "../../env/global";
import {getElementLocator} from "../../support/web-element-helper"
import {ScenarioWorld} from "../setup/world";
import {waitFor} from "../../support/wait-for-behavior";
import {expect} from "playwright/test";

Then(
    /^the "([^"]*)" should( not)? equal the "([^"]*)" stored in global variables$/,
    async function (this: ScenarioWorld, elementKey: ElementKey, negate: boolean, variableKey: string){
        const {
            screen: { page },
            globalConfig,
            globalVariables,
        } = this;

        console.log(`the ${elementKey} should ${negate?'not ':''}equal the ${globalVariables[variableKey]} stored in global variables`)

        const elementIdentifier = getElementLocator(page, elementKey, globalConfig)

        await waitFor(async () => {
            const elementText = await page.textContent(elementIdentifier)
            console.log(elementText)
            const variableValue = globalVariables[variableKey]
            console.log(variableValue)
            return (elementText === variableValue) === !negate
        })
    }
)

Then(
    /^the "([^"]*)" should( not)? contain the "([^"]*)" stored in global variables$/,
    async function (this: ScenarioWorld, elementKey: ElementKey, negate: boolean, variableKey: string){
        const {
            screen: { page },
            globalConfig,
            globalVariables,
        } = this;

        console.log(`the ${elementKey} should ${negate?'not ':''}contain the ${globalVariables[variableKey]} stored in global variables`)

        const elementIdentifier = getElementLocator(page, elementKey, globalConfig)
        await waitFor(async () => {
            const elementText = await page.textContent(elementIdentifier)
            const variableValue = globalVariables[variableKey]
            return elementText?.includes(variableValue) === !negate
        })
    }
)

Then(
    /^the "([^"]*)" (?:amount|value) should be (less)?(more)? than the "([^"]*)" stored in global variables$/,

    async function (this: ScenarioWorld, elementKey: ElementKey, negateLess: boolean, _negateMore: boolean, variableKey: string){
        const {
            screen: { page },
            globalConfig,
            globalVariables,
        } = this;

        console.log(`the ${elementKey} (?:amount|value) should be (less)?(more)? than the ${globalVariables[variableKey]} stored in global variables`)

        const elementIdentifier = getElementLocator(page, elementKey, globalConfig)

        const elementText = await page.textContent(elementIdentifier)

        const parsedElementValue = elementText === null ? NaN : parseFloat(elementText.replace('$', ''))

        const variableValue = parseFloat(globalVariables[variableKey].replace('$', ''))

        negateLess
            ? expect(parsedElementValue < variableValue).toEqual(true)
            : expect(parsedElementValue < variableValue).toEqual(false)

    }
)