import { defineConfig } from "vite";
import laravel from "laravel-vite-plugin";
export default defineConfig({
    plugins: [
        laravel({   
            input: [
                "public/admin/scss/admin.scss",
                "resources/js/app.js",
            ],
        }),
        {
            name: "blade.php",
            handleHotUpdate({ file, server }) {
                if (file.endsWith(".blade.php")) {
                    server.ws.send({
                        type: "full-reload",
                        path: "*",
                    });
                }
            },
        },
    ],
    build: {
        assetsInlineLimit: 0,
    },
});
