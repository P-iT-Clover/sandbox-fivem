import React from 'react';
import { useSelector } from 'react-redux';
import { makeStyles } from '@mui/styles';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faCompass, faMapMarkerAlt, faMap} from '@fortawesome/free-solid-svg-icons';

const useStyles = makeStyles(() => ({
    hudWrapper: {
        position: 'fixed',
        top: 15,
        left: '50%',
        transform: 'translateX(-50%)',
        display: 'flex',
        gap: 8,
        zIndex: 1000,
    },
    pill: {
        background: '#1a1a1aee',
        padding: '6px 14px',
        borderRadius: 20,
        color: 'white',
        fontSize: 14,
        fontWeight: 500,
        display: 'flex',
        alignItems: 'center',
        gap: 8,
        boxShadow: '0 0 8px #1a1a1a85',
    },
    icon: {
        fontSize: 14,
        opacity: 0.85,
        color: '#00c3ffff'
    },
}));

const LocationHUD = () => {
    const classes = useStyles();
    const time = useSelector((state) => state.location.time);
    const isShowing = useSelector((state) => state.location.showing);
    const location = useSelector((state) => state.location.location);
    const isBlindfolded = useSelector((state) => state.app.blindfolded);

    if (!isShowing || isBlindfolded) return null;

    return (
        <div className={classes.hudWrapper}>
            {/* Direction */}
            <div className={classes.pill}>
                <FontAwesomeIcon icon={faCompass} className={classes.icon} />
                {location.direction}
            </div>

            {/* Main street / road */}
            <div className={classes.pill}>
                <FontAwesomeIcon icon={faMapMarkerAlt} className={classes.icon} />
                {location.main}
            </div>

            {/* Area / district */}
            <div className={classes.pill}>
                <FontAwesomeIcon icon={faMap} className={classes.icon} />
                {location.area}
            </div>
        </div>
    );
};

export default LocationHUD;