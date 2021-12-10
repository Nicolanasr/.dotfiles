import React from "react";

import classes from "./Container.module.css";

const Container = (props) => {
  return (
    <div className={`${classes.customContainer} ${props.className} ${classes[props.size]}`} style={{ ...props.style }}>
      {props.children}
    </div>
  );
};

export default Container;
