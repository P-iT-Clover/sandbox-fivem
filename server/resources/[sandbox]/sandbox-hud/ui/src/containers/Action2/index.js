/* eslint-disable react/no-danger */
import React, { useEffect, useState } from 'react';
import { useSelector } from 'react-redux';
import ReactHtmlParser from 'react-html-parser';
import { Grow } from '@mui/material';
import { makeStyles } from '@mui/styles';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';

const useStyles = makeStyles((theme) => ({
    '@keyframes flash': {
        '0%': { opacity: 1 },
        '50%': { opacity: 0.1 },
        '100%': { opacity: 1 },
    },
    container: {
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
        position: 'absolute',
        bottom: '18%',
        left: '45%',
        transform: 'translateX(-50%)',
        padding: '12px 22px',
        borderRadius: 10,
        background: 'linear-gradient(135deg, rgba(20,20,20,0.7) 0%, rgba(40,40,40,0.6) 100%)',
        boxShadow: '0 4px 20px rgba(0,0,0,0.4)',
        color: '#fff',
        fontSize: 18,
        textShadow: '0 0 3px #000',
        width: 'fit-content',
        maxWidth: '80%',
        zIndex: 99999,
        border: `1px solid ${theme.palette.info.main}60`,
    },
    icon: {
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
        paddingRight: 10,
        fontSize: 20,
        color: theme.palette.info.main,
    },
    text: {
        padding: 0,
        '&.low': {
            animation: '$flash linear 1s infinite',
        },
    },
    key: {
        padding: '2px 6px',
        color: theme.palette.primary.main,
        background: 'rgba(255,255,255,0.1)',
        borderRadius: 3,
        textTransform: 'capitalize',
        fontWeight: 500,
        '&::before': { content: '"("'},
        '&::after': { content: '")"'},
    },
}));

export default () => {
    const classes = useStyles();
    const actions = useSelector((state) => state.action2.actions);

    const [action, setAction] = useState(
        actions.length > 0 ? actions[actions.length - 1] : null
    );

    useEffect(() => {
        setAction(actions.length > 0 ? actions[actions.length - 1] : null);
    }, [actions]);

    const ParseButtonText = (text) => {
        let v = text;
        v = v.replace(/\{key\}/g, `<span class=${classes.key}>`);
        v = v.replace(/\{\/key\}/g, `</span>`);
        return v;
    };

    if (!Boolean(action)) return null;

    return (
        <Grow in={Boolean(action)}>
            <div className={classes.container}>
                <div className={classes.icon}>
                    <FontAwesomeIcon icon="circle-info" />
                </div>
                <div className={classes.text}>
                    {ReactHtmlParser(ParseButtonText(action.message))}
                </div>
            </div>
        </Grow>
    );
};
