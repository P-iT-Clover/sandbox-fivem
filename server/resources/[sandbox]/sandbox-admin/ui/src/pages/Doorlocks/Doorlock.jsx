import React from "react";
import { ListItem, ListItemText, Grid, Chip } from "@material-ui/core";
import { makeStyles } from "@material-ui/styles";
import { useHistory } from "react-router-dom";

const useStyles = makeStyles((theme) => ({
  wrapper: {
    padding: 10,
    background: theme.palette.secondary.main,
    border: `1px solid ${theme.palette.border.divider}`,
    marginBottom: 10,
    borderRadius: 4,
    "&:hover": {
      background: theme.palette.secondary.light,
      cursor: "pointer",
      transition: "background ease-in 0.15s",
    },
  },
  state: {
    padding: 4,
    borderRadius: 4,
    color: theme.palette.text.main,
    fontWeight: 500,
  },
  locked: {
    background: theme.palette.error.main,
  },
  unlocked: {
    background: theme.palette.success.main,
  },
  coords: {
    fontSize: 12,
    color: theme.palette.text.alt,
  },
}));

export default ({ doorlock, onUpdate }) => {
  const classes = useStyles();
  const history = useHistory();

  const onClick = () => {
    history.push(`/doorlock/${doorlock.id}`);
  };

  return (
    <ListItem className={classes.wrapper} onClick={onClick}>
      <Grid container spacing={1}>
        <Grid item xs={6}>
          <ListItemText primary={`#${doorlock.id} - ${doorlock.name}`} secondary={<span className={classes.coords}>{doorlock.coords ? `X: ${doorlock.coords.x.toFixed(2)}, Y: ${doorlock.coords.y.toFixed(2)}, Z: ${doorlock.coords.z.toFixed(2)}` : "No coords"}</span>} />
        </Grid>
        <Grid item xs={3}>
          <ListItemText primary="Groups" secondary={doorlock.groups && Object.keys(doorlock.groups).length > 0 ? Object.keys(doorlock.groups).join(", ") : "No groups"} />
        </Grid>
        <Grid item xs={3}>
          <Chip className={`${classes.state} ${doorlock.state === 1 ? classes.locked : classes.unlocked}`} label={doorlock.state === 1 ? "Locked" : "Unlocked"} />
        </Grid>
      </Grid>
    </ListItem>
  );
};
