const colors = require("tailwindcss/colors");

module.exports = {
  mode: "all",
  preserveHtmlElements: false,
  darkMode: "media",
  darkMode: "class",
  purge: [
    "./static/**/*.html",
    "./static/**/*.vue",
    "./static/**/*.jsx",
    "./src/Templates/**/*.hs",
  ],
  theme: {
    fontFamily: {
      sans: ["Overpass", "sans-serif"],
      serif: ["Overpass", "serif"],
    },
    colors: {
      "navy-blue": "#040215",
      "navy-blue-light": "#0B0C20",
      "navy-blue-lighter": "#20213A",
      transparent: "transparent",
      current: "currentColor",
      black: colors.black,
      white: colors.white,
      gray: colors.coolGray,
      red: colors.red,
      yellow: colors.amber,
      blue: colors.blue,
      green: colors.green,
      indigo: colors.indigo,
      violet: colors.violet,
      pink: colors.pink,
      purple: colors.purple,
    },
  },
  variants: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/forms'),
  ],
};
