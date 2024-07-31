import http from '../lib/http.ts';

export function searchMedicineService (keyword: string) {
    return http({
        method: "POST",
        url: '/medicine/search',
        data: {
            keyword
        }
    })
}