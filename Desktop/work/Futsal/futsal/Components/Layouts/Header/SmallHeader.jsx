import React from "react";

import Container from "../Container/Container";

import classes from "./SmallHeader.module.css";

const SmallHeader = () => {
  return (
    <div className={classes.smallHeader}>
      <Container style={{ height: "100%" }}>
        <div className={classes.smallHeaderContent}>
          <div className={classes.title}>REGIONAL FOOTBALL LEAGUE</div>
          <div className={classes.socials}>
            <div>fb</div>
            <div>fb</div>
            <div>fb</div>
            <div>fb</div>
          </div>
        </div>
      </Container>
    </div>
  );
};

export default SmallHeader;
