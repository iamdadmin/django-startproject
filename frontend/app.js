import { createSSRApp, h } from 'vue';
import { createInertiaApp } from '@inertiajs/vue3';

/* const appName = import.meta.env.VITE_APP_NAME || 'Laravel'; */
const appName = "FIX ME"

createInertiaApp({
    title: (title) => `${title} - ${appName}`,
    resolve: (name) => {
		const pages = import.meta.glob("./pages/**/*.vue", { eager: true });
		return pages[`./pages/${name}.vue`];
	},
    setup({ el, App, props, plugin }) {
        return createSSRApp({ render: () => h(App, props) })
            .use(plugin)
            .mount(el);
    },
    progress: {
        color: '#4B5563',
    },
});
