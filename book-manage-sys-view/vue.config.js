module.exports = {
    lintOnSave: false,
    devServer: {
        host: "localhost",
        port: 2001,
        https: false,
        proxy: "http://localhost:2000",
        overlay: {
            warning: false,
            errors: false
        },
    }
}