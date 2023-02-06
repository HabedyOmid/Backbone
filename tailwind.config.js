const plugin = require("tailwindcss/plugin");

module.exports = {
	content: [
		"./src/**/*.{scss}",
		"./templates/**/*.{html,js}",
		"./parts/**/*.{html,js}",
	],
	theme: {
		extend: {
			fontFamily: {
				primary: ["Now Alt"],
				secondary: ["Recoleta Alt"],
			},
			fontSize: {
				sm: "var(--wp--preset--font-size--small)",
				md: "var(--wp--preset--font-size--medium)",
				base: "var(--wp--preset--font-size--large)",
				lg: "var(--wp--preset--font-size--x-large)",
				// https://clamp.font-size.app/
				h1: "clamp(2.1875rem, 1.7708rem + 2.2222vw, 3.4375rem)", // 35-55px
				h2: "clamp(1.5625rem, 1.3542rem + 1.1111vw, 2.1875rem)", // 25-35px
				h3: "clamp(1.5625rem, 1.3542rem + 1.1111vw, 2.1875rem)", // 25-35px
				h4: "clamp(1.25rem, 1.1458rem + 0.5556vw, 1.5625rem)", // 20-25px
				h5: "clamp(1.125rem, 1.0833rem + 0.2222vw, 1.25rem)", // 18-20px
				h6: "clamp(1rem, 0.9583rem + 0.2222vw, 1.125rem)", // 16-18px
			},
			lineHeight: {
				100: "100%",
				105: "105%",
				110: "110%",
				115: "115%",
				120: "120%",
				130: "130%",
				140: "140%",
				150: "150%",
			},
			colors: {
				slate: {
					100: "var(--wp--preset--color--slate-100)",
					200: "var(--wp--preset--color--slate-200)",
					300: "var(--wp--preset--color--slate-300)",
					400: "var(--wp--preset--color--slate-400)",
					500: "var(--wp--preset--color--slate-500)",
					600: "var(--wp--preset--color--slate-600)",
					700: "var(--wp--preset--color--slate-700)",
					800: "var(--wp--preset--color--slate-800)",
					900: "var(--wp--preset--color--slate-900)",
				},
			},
			spacing: {
				0.5: "0.125rem", // 2px
				1: "0.25rem", // 4px
				1.5: "0.375rem", // 6px
				2: "0.5rem", // 8px
				2.5: "0.625rem",
				3: "0.75rem",
				3.5: "0.875rem",
				4: "1rem",
				4.5: "1.125rem",
				5: "1.25rem",
				6: "1.5rem",
				7: "1.75rem",
				8: "2rem",
				9: "2.25rem",
				10: "2.5rem",
				"grid-1/2": "calc(50% - 0.625rem)",
				"grid-1/3": "calc(33.333333% - 0.625rem)",
				"grid-1/4": "calc(25% - 0.96rem)",
				"grid-1/5": "calc(20% - 1rem)",
				"grid-1/6": "calc(16.666666% - 1.05rem)",
			},
		},
	},

	plugins: [
		// extract Colors as CSS vars
		// function ({ addBase, theme }) {
		// 	function extractColorVars(colorObj, colorGroup = "") {
		// 		return Object.keys(colorObj).reduce((vars, colorKey) => {
		// 			const value = colorObj[colorKey];
		// 			const cssVariable =
		// 				colorKey === "DEFAULT"
		// 					? `--color${colorGroup}`
		// 					: `--color${colorGroup}-${colorKey}`;
		// 			const newVars =
		// 				typeof value === "string"
		// 					? { [cssVariable]: value }
		// 					: extractColorVars(value, `-${colorKey}`);
		// 			return { ...vars, ...newVars };
		// 		}, {});
		// 	}
		// 	addBase({
		// 		body: extractColorVars(theme("colors")),
		// 	});
		// },
	],
};
