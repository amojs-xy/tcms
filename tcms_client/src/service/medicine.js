import http from '../lib/http.js';

export function searchMedicineService (keyword) {
    return http({
        method: "POST",
        url: '/medicine/search',
        data: {
            keyword
        }
    })
}