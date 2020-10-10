// configuration here will override any service level configuration
{
  _config+:: {
    'service-template': {
      slos: {
        days: 30,
        availability: 0.99,
      },
    },

    dashboard: {
      prefix: '',
    },
  },
}
