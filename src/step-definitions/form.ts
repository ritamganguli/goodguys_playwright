import  { Then } from '@cucumber/cucumber'
import { waitFor } from "../support/wait-for-behavior";
import { getElementLocator } from "../support/web-element-helper";
import { ScenarioWorld } from "./setup/world";
import { ElementKey } from "../env/global";
import {
    inputValue,
    selectValue }
    from "../support/html-behavior";
import {stringify} from "querystring";

Then (
    /^I fill in the "([^"]*)" input with "([^"]*)"$/,
    async function (this : ScenarioWorld, elementKey: ElementKey, input: string) {
         const {
             screen: {page},
             globalConfig,
         } = this;
         console.log(`I fill in the ${elementKey} input with ${input}`)
        const elementIdentifier = getElementLocator(page, elementKey, globalConfig)

        await waitFor( async  () => {
            const result = await page.waitForSelector(elementIdentifier, {
                state: 'visible'
            })
            if (result) {
                await inputValue(page, elementIdentifier, input)
            }
            return result;

        })


}
)

Then (
    /^I select the "([^"]*)" option from the "([^"]*)"$/,
    async function (this: ScenarioWorld, option: string, elementKey: ElementKey ){
        const {
            screen: { page },
            globalConfig,
        } = this;

        console.log(`I select the ${option} option from the ${elementKey}`)
        const elementIdentifier = getElementLocator(page, elementKey, globalConfig)
        await waitFor(async  ()=>{
            const result = await page.waitForSelector(elementIdentifier, {
                state: 'visible'
            })

            if(result){
                await selectValue(page, elementIdentifier, option)
            }
            return result;
        })
    }
)

Then(
    /^I clear the "([^"]*)" input text$/,
    async function (this: ScenarioWorld, elementKey: ElementKey ){
        const {
            screen: { page },
            globalConfig,
        } = this;
        console.log(`I clear the ${elementKey} input text`)
        const elementIdentifier = getElementLocator(page, elementKey, globalConfig)
        await inputValue(page, elementIdentifier, ' ')
        }

)


