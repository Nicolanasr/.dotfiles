import React, { useEffect } from "react";
import Image from "next/image";
import Link from "next/link";
import { useRouter } from "next/router";

import SmallHeader from "./SmallHeader";
import Container from "../Container/Container";

import classes from "./Header.module.css";

const Header = () => {
  const router = useRouter();

  function myFunction() {
    var header = document.getElementById("header");
    var sticky = header.offsetTop;

    if (window.pageYOffset > sticky) {
      header.classList.add("sticky");
      document.getElementsByClassName("main")[0].classList.add("headerSticky");
    } else {
      header.classList.remove("sticky");
      document.getElementsByClassName("main")[0].classList.remove("headerSticky");
    }
  }

  useEffect(() => {
    window.onscroll = function () {
      myFunction();
    };
  }, []);

  const isActive = (tabToCheck) => {
    return router.asPath.startsWith(tabToCheck);
  };

  return (
    <nav className="Header">
      <SmallHeader />
      <div className={classes.mainHeader} id="header">
        <Container style={{ height: "100%" }}>
          <div className={classes.headerContent}>
            <div className={classes.mainLogo}>
              <Link href="/" passHref>
                <Image src="/Assets/Images/champions league.jpeg" layout="fill" alt="LOGO" objectFit="contain" />
              </Link>
            </div>
            <div className={classes.navItems}>
              <Link href="/fixtures" passHref>
                <div className={`${classes.navItem} ${isActive("/fixtures") ? classes.isActive : undefined}`}>FIXTURES</div>
              </Link>
              <Link href="/results" passHref>
                <div className={`${classes.navItem} ${isActive("/results") ? classes.isActive : undefined}`}>RESULTS</div>
              </Link>
              <Link href="/tables" passHref>
                <div className={`${classes.navItem} ${isActive("/tables") ? classes.isActive : undefined}`}>TABLES</div>
              </Link>
              <Link href="/teams" passHref>
                <div className={`${classes.navItem} ${isActive("/teams") ? classes.isActive : undefined}`}>TEAMS</div>
              </Link>
              <Link href="/best-players" passHref>
                <div className={`${classes.navItem} ${isActive("/best-players") ? classes.isActive : undefined}`}>BEST PLAYERS</div>
              </Link>
            </div>
            <div className={classes.language}>AR</div>
          </div>
        </Container>
      </div>
    </nav>
  );
};

export default Header;
