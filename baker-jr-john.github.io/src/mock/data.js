import { nanoid } from 'nanoid';

// HEAD DATA
export const headData = {
  title: 'John Baker | Data Visualization Business Analyst', // e.g: 'Name | Developer'
  lang: 'en', // e.g: en, es, fr, jp
  description:
    'John Baker is a Data Visualization Business Analyst that helps people unlock the value of data.', // e.g: Welcome to my website
};

// HERO DATA
export const heroData = {
  title: 'Hi, my name is',
  name: 'John Baker',
  subtitle: 'I operate at the intersection of business and technology.',
  cta: 'Learn more',
};

// ABOUT DATA
export const aboutData = {
  img: 'profile.jpg',
  paragraphOne:
    'Data is essential to my work. I relish taking disparate information sources, extrapolating useful analytics, producing coherent reporting, and increasing productivity in various projects and environments.',
  paragraphTwo:
    "I'm looking forward to assisting you in optimizing, digitizing, and automating business workflows, uncovering insights and opportunities, and using analytics to unlock the value of your data.",
  resume: '', // if no resume, the button will not show up
};

// PROJECTS DATA
export const projectsData = [
  {
    id: nanoid(),
    img: 'project.jpg',
    title: 'Medical Insurance Costs',
    info: 'In this project, I investigated medical insurance information. I aimed to analyze various attributes to learn more about the patients and gain insight into potential use cases for the dataset.',
    url: 'https://github.com/baker-jr-john/US_Medical_Insurance_Costs/blob/c27ad0c0268729d6a85134115cea4c45242b2718/us-medical-insurance-costs.ipynb',
    repo: 'https://github.com/baker-jr-john/US_Medical_Insurance_Costs', // if no repo, the button will not show up
  },
  {
    id: nanoid(),
    img: 'project.jpg',
    title: 'Life Expectancy and GDP',
    info: 'Here, I analyzed data from the World Health Organization and the World Bank to identify the relationship between GDP and life expectancy in six countries.',
    url: 'https://github.com/baker-jr-john/Life_Expectancy_and_GDP/blob/main/life_expectancy_gdp.ipynb',
    repo: 'https://github.com/baker-jr-john/Life_Expectancy_and_GDP', // if no repo, the button will not show up
  },
  {
    id: nanoid(),
    img: 'project.jpg',
    title: '',
    info: '',
    info2: '',
    url: '',
    repo: '', // if no repo, the button will not show up
  },
  {
    id: nanoid(),
    img: 'project.jpg',
    title: '',
    info: '',
    info2: '',
    url: '',
    repo: '', // if no repo, the button will not show up
  },
];

// CONTACT DATA
export const contactData = {
  cta: 'Would you like to work together? Fantastic!',
  btn: 'Email Me',
  email: 'hello@johnbaker.io',
};

// FOOTER DATA
export const footerData = {
  networks: [
    {
      id: nanoid(),
      name: 'twitter',
      url: 'https://twitter.com/baker_jr_john',
    },
    {
      id: nanoid(),
      name: 'linkedin',
      url: 'https://www.linkedin.com/in/baker-jr-john/',
    },
    {
      id: nanoid(),
      name: 'github',
      url: 'https://github.com/baker-jr-john/',
    },
  ],
};

// Github start/fork buttons
export const githubButtons = {
  isEnabled: false, // set to false to disable the GitHub stars/fork buttons
};
