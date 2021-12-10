import React from "react";
import Image from "next/image";

import Container from "../../Layouts/Container/Container";

import classes from "./HeroSection.module.css";

const HeroSection = (props) => {
  return (
    <div className={classes.heroSection}>
      <div className={classes.imageWrapper}>
        <Image src="/Assets/Images/women football.jpeg" layout="fill" alt="hero image" objectFit="cover" />
      </div>
      <div className={classes.textWrapper}>
        <Container>
          <div className={classes.heroTextBody}>
            <div className={classes.heroTextTitle}>THERE ARE MANY VARIATIONS</div>
            <div className={classes.heroTextText}>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis praesentium nostrum quas quo, totam fuga rerum ab eaque qui ex ipsam
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis
            </div>
          </div>
        </Container>
      </div>
    </div>
  );
};

export default HeroSection;
