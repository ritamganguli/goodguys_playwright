import type { PlaywrightTestConfig } from '@playwright/test';

const config:PlaywrightTestConfig = {
    globalSetup: "./global-setup",
    testMatch:[".feature"],


    use : {
        actionTimeout: 0,
        storageState: "./LoginAuth.json",

    }
};


export default config;