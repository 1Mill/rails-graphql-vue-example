module.exports = {
  /*
  ** Headers of the page
  */
  head: {
    title: 'rails-graphql-vue-client',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: 'The frontend client for a Rails GraphQL backend.' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
    ]
  },
	/*
  ** Load custom modules
  */
	modules: [
		'@nuxtjs/apollo'
	],
	/*
  ** Configure Apollo module
  */
	apollo: {
		clientConfigs: {
      default: {
        httpEndpoint: 'http://localhost:3001'
			}
		}
	},
  /*
  ** Customize the progress bar color
  */
  loading: { color: '#3B8070' },
  /*
  ** Build configuration
  */
  build: {
    /*
    ** Run ESLint on save
    */
    extend (config, { isDev, isClient }) {
      if (isDev && isClient) {
        config.module.rules.push({
          enforce: 'pre',
          test: /\.(js|vue)$/,
          loader: 'eslint-loader',
          exclude: /(node_modules)/
        })
      }
    }
  },
  /*
  ** Forcer server to check for changes within files
  */
  watchers: {
    webpack: {
      poll: true
    }
  }
}
