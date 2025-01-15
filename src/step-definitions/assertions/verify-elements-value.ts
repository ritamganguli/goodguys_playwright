import {Then, When} from "@cucumber/cucumber";
import {ElementKey} from "../../env/global";
import {getElementLocator} from "../../support/web-element-helper"
import {ScenarioWorld} from "../setup/world";
import {waitFor} from "../../support/wait-for-behavior";
import {getValue} from "../../support/html-behavior";


Then(

    /^the "([^"]*)" should( not)? contain the text "([^"]*)"$/,
    async function (this:ScenarioWorld, elementKey:ElementKey, negate: boolean, expectedElementText: string){
        const {
            screen: { page },
            globalConfig,
        } = this;
        console.log(`the ${elementKey} should ${negate?'not':''} contain the text ${expectedElementText}`)
        const elementIdentifier=getElementLocator(page, elementKey,  globalConfig)
        console.log(`the ${elementIdentifier} should contain the `)
       await waitFor(async  () =>{
           const elementText = await page.textContent(elementIdentifier)
           return elementText?.includes(expectedElementText) === !negate

       })


    }
)


Then(
    /^the "([^"]*)" should( not)? equal the text "([^"]*)"$/,
    async function (this:ScenarioWorld, elementKey: ElementKey, negate:Boolean , expectedElementText: string){
        const {
            screen: {page},
            globalConfig,
        } = this
        console.log(`the ${elementKey} should ${negate?'not':''} equal the text ${expectedElementText}`)

        const elementIdentifier = getElementLocator(page, elementKey, globalConfig)

        await waitFor( async () =>{
            const elementText = await page.textContent(elementIdentifier)
            console.log("elementText ", elementText)
            console.log("expectedElementText ", expectedElementText)
            return (elementText === expectedElementText) === !negate
        })
    }
)

Then(
    /^the "([^"]*)" should( not)? contain the value "(.*)"$/,
    async function (this:ScenarioWorld, elementKey: ElementKey, negate: boolean, elementValue: string) {
        const {
            screen: { page },
            globalConfig,
        } = this;

      //  console.log(`the ${elementKey} should ${negate?'not':''}contain the value ${elementKey}`)

        const elementIdentifier = getElementLocator(page, elementKey, globalConfig)

        await waitFor(async () => {
            const elementAttribute = await getValue(page, elementIdentifier)
            return elementAttribute?.includes(elementValue) === !negate;
        })
    }
)

Then(
    /^the "([^"]*)" should( not)? equal the value "(.*)"$/,
    async function (this:ScenarioWorld, elementKey: ElementKey, negate: boolean, elementValue: string){
        const {
            screen: { page },
            globalConfig,
        } = this;

       // console.log(`the  ${elementKey} should ${negate ? 'not' : ''}equal the value ${elementKey}`)
        const elementIdentifier = getElementLocator(page, elementKey, globalConfig)

        await waitFor(async () => {
            const elementAttribute = await getValue(page, elementIdentifier)
            return (elementAttribute === elementValue) === !negate;
        })
    }
)

Then(
    /^the "([^"]*)" should( not)? be enabled$/,
    async function (this: ScenarioWorld, elementKey: ElementKey, negate: boolean){
        const {
            screen: { page },
            globalConfig,
        } = this;

        console.log(`the ${elementKey} should ${negate?'not':''} be enabled`)
        const elementIdentifier = getElementLocator(page, elementKey, globalConfig)

        await waitFor(async () => {
            const isElementEnabled = await page.isEnabled(elementIdentifier)
            return isElementEnabled === !negate;
        })
    }
)

Then(
    /^the "([0-9]+th|[0-9]+st]|[0-9]+nd|[0-9]+rd])" "([^"]*)" should( not)? contain the text "(.*)"$/,
    async function (this: ScenarioWorld, elementPosition: string, elementKey: ElementKey, negate: boolean, expectedElementText: string){
        const {
            screen: { page },
            globalConfig,
        } = this;
        console.log(`the ${elementPosition} ${elementKey} should ${negate?'not ':''}contain the text ${expectedElementText}`)

        const elementIdentifier = getElementLocator(page, elementKey, globalConfig)
        const pageIndex = Number(elementPosition.match(/\d/g)?.join(''))  -1

        await waitFor( async () => {
            const elementText = await page.textContent(`${elementIdentifier}>>nth=${pageIndex}`)
            return elementText?.includes(expectedElementText) === negate
        })
    }
)





