import React from 'react';
import { Link } from 'gatsby';
import { Helmet } from 'react-helmet';
import { Container } from 'react-bootstrap';
import Fade from 'react-reveal/Fade';
import 'bootstrap/dist/css/bootstrap.min.css';

import { headData } from '../mock/data';
import '../style/main.scss';

export default () => {
  const { lang } = headData;

  return (
    <>
      <Helmet>
        <meta charSet="utf-8" />
        <title>404 Not Found</title>
        <html lang={lang || 'en'} />
        <meta name="description" content="404 Not Found" />
      </Helmet>
      <section id="hero" className="jumbotron">
        <Container>
          <Fade bottom duration={1000} delay={500} distance="30px">
            <h1 className="hero-title text-center">404 Not Found</h1>
            <p className="hero-cta justify-content-center">
              You may have entered the URL incorrectly, or the page you're looking for is no longer
              available, or it never existed.
              <br />
              <br />
            </p>
            <p className="hero-cta justify-content-center">
              <Link className="cta-btn cta-btn--hero" to="/">
                Go back to the homepage
              </Link>
            </p>
          </Fade>
        </Container>
      </section>
    </>
  );
};
