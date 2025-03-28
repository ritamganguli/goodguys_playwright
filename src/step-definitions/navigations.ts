import {Given} from "@cucumber/cucumber";
import {PageId} from "../env/global";
import {
    navigateToPage,
    currentPathMatchesPageId
} from "../support/navigation-behavior"
import {ScenarioWorld} from "./setup/world";
import {waitFor} from "../support/wait-for-behavior";


Given(
    /^I am on the "([^"]*)" page$/,
    async function (this: ScenarioWorld, pageId:PageId){
        const {
            screen:{ page},
            globalConfig,
        } =this;

        console.log(`I am on the ${pageId} page`);


        await  navigateToPage(page, pageId, globalConfig)
        await waitFor(() => currentPathMatchesPageId(page, pageId, globalConfig))
    }

)

Given(
    /^I navigate back on the "([^"]*)" page$/,
    async function (this: ScenarioWorld, pageId:PageId){
        const {
            screen:{ page},
            globalConfig,
        } =this;

        console.log(`I am on the ${pageId} page`);

        await page.goBack()
       // await  navigateToPage(page, pageId, globalConfig)
        //await waitFor(() => currentPathMatchesPageId(page, pageId, globalConfig))
    }

)

    Given(
         /^I am directed to the "([^"]*)" page$/,
        async function (this: ScenarioWorld, pageId: PageId){
            //setTimeout(() => console.log("Howdy!"), 2000)
             const  {
                 screen: { page },
                 globalConfig,
             } = this;

             console.log(`I am directed to the ${pageId} page`)

            await  waitFor( () => currentPathMatchesPageId(page, pageId, globalConfig))

        }

)