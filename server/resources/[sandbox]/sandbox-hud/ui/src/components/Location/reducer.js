export const initialState = {
    showing: false,
    location: {
        main: 'El Rancho Blvd',
        cross: 'Forum Dr',
        area: 'Cypress Flats',
        direction: 'West',
    },
    shifted: true,
};

export default (state = initialState, action) => {
    switch (action.type) {
        case 'SHOW_LOCATION':
            return {
                ...state,
                showing: action.payload.state,
            };
        case 'UPDATE_LOCATION':
            return {
                ...state,
                location: action.payload.location,
            };
        case 'SHIFT_LOCATION':
            return {
                ...state,
                shifted: action.payload.shift,
            };
        default:
            return state;
    }
};
