import {defineConfig} from "vite";
import react from "@vitejs/plugin-react";

// https://vitejs.dev/config/
export default defineConfig({
	plugins: [react()],
	//se agrega esta parte por que no refresca el servidor en Docker
	server: {
		watch: {
			usePolling: true
		}
	}
});
