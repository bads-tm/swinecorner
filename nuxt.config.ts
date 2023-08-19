// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  ssr: true, //When false  target: "static", // and static, nuxt generates a SPA

  baseURL: "/swine/",
  app: {baseURL: "/swine/"},
})
