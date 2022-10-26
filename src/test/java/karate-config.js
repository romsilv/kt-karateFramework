function fn() {
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'qa';
    }
    var config = {
        baseUrl: 'https://test-api.ligax.io'
    }

    if (env == 'qa') {
        config.baseUrl = 'https://test-api.ligax.io';
        config.userName = ''
        config.userPassword = ''
    }
    else if (env == 'dev') {
        config.baseUrl = '';
        config.userName = ''
        config.userPassword = ''
    }


    // generate a token through token-reusable.feature
    //var accessToken = karate.callSingle('classpath:feature/reusable/Token-reusable.feature', config).authToken
    //karate.configure('headers', {Authorization: 'Bearer ' + accessToken})


    // don't waste time waiting for a connection or if servers don't respond within 5 seconds
    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
    return config;
}













