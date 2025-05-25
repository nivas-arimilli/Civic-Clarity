-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2025 at 05:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `constitution`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `USERNAME` varchar(455) NOT NULL,
  `PASSWORD` varchar(234) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`USERNAME`, `PASSWORD`) VALUES
('uname', 'pwd');

-- --------------------------------------------------------

--
-- Table structure for table `citizenship`
--

CREATE TABLE `citizenship` (
  `SNo` int(20) NOT NULL,
  `ArticleNo` varchar(20) NOT NULL,
  `ArticleDefinition` text NOT NULL,
  `ArticleDescription` text NOT NULL,
  `Keywords` text NOT NULL,
  `DateAdded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizenship`
--

INSERT INTO `citizenship` (`SNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, '5', ' Citizenship at commencement.\r\n', 'Defines citizenship at the commencement of the Constitution based on domicile and residency.', 'Citizenship,Article 5,citizen', '1949-11-26'),
(2, '6', 'Citizenship for Pakistani migrants', 'Grants citizenship to migrants from Pakistan under specific conditions', 'Citizenship,Pakistan,Article 6', '1949-11-26'),
(3, '7', 'Citizenship for returning migrants', ' Allows persons who migrated to Pakistan but later returned to regain citizenship', 'Citizenship,Pakistan,return,Article 7', '1949-11-26'),
(4, '8', 'Citizenship for Indians abroad', 'Grants citizenship to Indians residing abroad through registration', 'Citizenship,Indian,Article 8', '1949-11-26'),
(5, '9', 'No dual citizenship', 'Prohibits dual citizenship; acquiring foreign citizenship leads to loss of Indian citizenship', 'Citizenship, foreign, Article 9', '1949-11-26'),
(6, '10', 'Continuance of citizenship', 'Ensures the continuance of citizenship unless changed by law', 'Citizenship, Continue, Article 10', '1949-11-26'),
(7, '11', 'Parliament’s power on citizenship', 'Empowers Parliament to regulate citizenship laws', 'Citizenship, Parliament, Article 11', '1949-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `constitutionarticles`
--

CREATE TABLE `constitutionarticles` (
  `SNo` int(11) NOT NULL,
  `ArticleNo` varchar(10) NOT NULL,
  `ArticleDefinition` varchar(255) NOT NULL,
  `ArticleDescription` text NOT NULL,
  `Keywords` varchar(500) DEFAULT NULL,
  `DateAdded` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constitutionarticles`
--

INSERT INTO `constitutionarticles` (`SNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, '245', 'Extent of laws made by Parliament and by the Legislatures of States', 'Parliament may make laws for the whole or any part of India, and the Legislature of a State may make laws for the whole or any part of the State. No law made by Parliament shall be deemed invalid on the ground that it would have extra-territorial operation.', 'parliament powers, state legislature, territorial jurisdiction, law making', '1950-01-26'),
(2, '246', 'Subject-matter of laws made by Parliament and by the Legislatures of States', 'Parliament has exclusive power to make laws with respect to matters in List I (Union List). State Legislature has exclusive power for List II (State List). Both can make laws for List III (Concurrent List), but parliamentary law prevails in case of conflict.', 'legislative powers, union list, state list, concurrent list', '1950-01-26'),
(3, '246A', 'Special provision with respect to goods and services tax', 'Parliament and State Legislatures have power to make laws with respect to goods and services tax. Parliament has exclusive power to make laws for interstate trade or commerce.', 'GST, taxation powers, interstate commerce', '2016-09-08'),
(4, '247', 'Power of Parliament to provide for the establishment of certain additional courts', 'Parliament may by law provide for the establishment of additional courts for better administration of laws made by Parliament or existing laws with respect to matters in the Union List.', 'additional courts, union list, judicial administration', '1950-01-26'),
(5, '248', 'Residuary powers of legislation', 'Parliament has exclusive power to make laws with respect to any matter not enumerated in the Concurrent List or State List.', 'residuary powers, parliamentary powers, exclusive jurisdiction', '1950-01-26'),
(6, '249', 'Power of Parliament to legislate with respect to a matter in the State List', 'If Rajya Sabha declares by 2/3 majority that it is necessary in national interest, Parliament can make laws on State List matters for up to one year (renewable).', 'national interest, state list, parliamentary override, Rajya Sabha', '1950-01-26'),
(7, '250', 'Power of Parliament to legislate during Emergency', 'During Emergency, Parliament can make laws on any matter in the State List. Such laws cease to have effect 6 months after the Emergency ends.', 'emergency powers, state list, parliamentary powers', '1950-01-26'),
(8, '251', 'Inconsistency between laws made by Parliament and States', 'If State law conflicts with Parliamentary law made under Articles 249 or 250, the Parliamentary law prevails to the extent of inconsistency.', 'legislative conflicts, parliamentary supremacy, state laws', '1950-01-26'),
(9, '252', 'Power of Parliament to legislate for two or more States by consent', 'If two or more States request Parliament to legislate on a State List matter, Parliament can do so. Other States can adopt such law by resolution.', 'state consent, parliamentary legislation, adoption of laws', '1950-01-26'),
(10, '253', 'Legislation for international agreements', 'Parliament has power to make laws for implementing international treaties, agreements, or conventions, or decisions at international conferences.', 'international agreements, treaty implementation, parliamentary powers', '1950-01-26'),
(11, '254', 'Inconsistency between Union and State laws', 'In case of conflict between State and Union laws on Concurrent List subjects, Union law prevails unless State law has President\'s assent.', 'legislative conflicts, concurrent list, presidential assent', '1950-01-26'),
(12, '255', 'Requirements as to recommendations and sanctions', 'No law made by a Legislature shall be invalid merely because some recommendation or sanction required was not given; it shall be deemed to have been given.', 'legislative procedure, validity of laws, recommendations', '1950-01-26'),
(13, '256', 'Obligation of States and the Union', 'States must ensure compliance with Parliament\'s laws. Union can give necessary directions to States for this purpose.', 'state compliance, union directions, executive power', '1950-01-26'),
(14, '257', 'Control of the Union over States', 'State executive power must not impede Union executive power. Union can direct States regarding means of communication of national/military importance.', 'union control, state powers, national importance', '1950-01-26'),
(15, '257A', '[Repealed] Assistance to States by deployment of armed forces', '[Repealed by the Constitution (Forty-fourth Amendment) Act, 1978]', 'repealed article, armed forces, state assistance', '1950-01-26'),
(16, '258', 'Power of the Union to confer powers on States', 'President may, with State consent, entrust State Government with functions relating to Union executive power.', 'power delegation, state consent, presidential powers', '1950-01-26'),
(17, '258A', 'Power of the States to entrust functions to the Union', 'State may, with Union consent, entrust its functions to the Union Government.', 'state powers, union functions, power delegation', '1950-01-26'),
(18, '259', '[Repealed] Armed Forces in States in Part B', '[Repealed by the Constitution (Seventh Amendment) Act, 1956]', 'repealed article, armed forces, Part B states', '1950-01-26'),
(19, '260', 'Jurisdiction of the Union in relation to territories outside India', 'Union can agreement with non-Indian territories to exercise executive, legislative, or judicial functions.', 'external territories, international jurisdiction, agreements', '1950-01-26'),
(20, '261', 'Public acts, records and judicial proceedings', 'Public acts, records, and judicial proceedings of Union and States shall have recognition throughout India.', 'public records, judicial proceedings, interstate recognition', '1950-01-26'),
(21, '262', 'Adjudication of disputes relating to waters', 'Parliament may provide for adjudication of inter-State river water disputes.', 'water disputes, interstate rivers, adjudication', '1950-01-26'),
(22, '263', 'Provisions with respect to an inter-State Council', 'President may establish Inter-State Council for coordination between Union and States.', 'interstate council, coordination, union-state relations', '1950-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `constitutionpart12`
--

CREATE TABLE `constitutionpart12` (
  `SNo` int(11) NOT NULL,
  `ArticleNo` varchar(10) NOT NULL,
  `ArticleDefinition` varchar(255) NOT NULL,
  `ArticleDescription` text NOT NULL,
  `Keywords` varchar(500) DEFAULT NULL,
  `DateAdded` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constitutionpart12`
--

INSERT INTO `constitutionpart12` (`SNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, '264', 'Interpretation of Finance Articles', 'In this Part, \"Finance Commission\" means a Finance Commission constituted under Article 280.', 'finance commission, definition, interpretation', '1950-01-26'),
(2, '265', 'Taxes not to be imposed save by authority of law', 'No tax shall be levied or collected except by the authority of law.', 'taxation, legal authority, tax collection', '1950-01-26'),
(3, '266', 'Consolidated Funds and Public Accounts', 'All revenues of the Union and States go to respective Consolidated Funds. Other public moneys go to respective Public Accounts.', 'consolidated fund, public account, revenue collection', '1950-01-26'),
(4, '267', 'Contingency Fund', 'Parliament and State Legislatures may establish Contingency Funds for unforeseen expenditure.', 'contingency fund, emergency expenditure, financial emergency', '1950-01-26'),
(5, '268', 'Duties levied by the Union but collected by the States', 'Certain stamp duties and duties of excise on medicinal and toilet preparations shall be levied by Government of India but collected by the States.', 'stamp duties, excise duties, tax collection, revenue sharing', '1950-01-26'),
(6, '268A', '[Repealed] Service tax levied by Union and collected by Union and States', '[Repealed by Constitution (One Hundred and First Amendment) Act, 2016]', 'service tax, repealed article, GST implementation', '2016-09-08'),
(7, '269', 'Taxes levied and collected by the Union but assigned to the States', 'Certain taxes shall be levied and collected by the Union but assigned to the States.', 'tax assignment, union taxes, state revenue', '1950-01-26'),
(8, '269A', 'Levy and collection of goods and services tax in course of inter-State trade', 'GST on inter-State supplies shall be levied and collected by the Government of India and apportioned between the Union and the States.', 'GST, interstate trade, tax apportionment', '2016-09-08'),
(9, '270', 'Taxes levied and distributed between the Union and the States', 'Taxes levied and collected by the Union shall be distributed between Union and States as prescribed.', 'tax distribution, revenue sharing, fiscal federalism', '1950-01-26'),
(10, '271', 'Surcharge on certain duties and taxes for purposes of the Union', 'Parliament may at any time increase duties or taxes by a surcharge for purposes of the Union.', 'surcharge, union purposes, additional taxation', '1950-01-26'),
(11, '272', '[Repealed] Taxes which are levied and collected by the Union', '[Repealed by the Constitution (Eightieth Amendment) Act, 2000]', 'repealed article, union taxes, tax collection', '1950-01-26'),
(12, '273', 'Grants in lieu of export duty on jute and jute products', 'Grants to certain States in lieu of export duty on jute and jute products.', 'jute exports, state grants, export duty', '1950-01-26'),
(13, '274', 'Prior recommendation of President required for Bills affecting taxation in which States are interested', 'Presidential recommendation needed for Bills affecting taxation where States have an interest.', 'presidential recommendation, state interests, tax bills', '1950-01-26'),
(14, '275', 'Grants from the Union to certain States', 'Parliament may provide grants-in-aid to States in need of assistance.', 'grants-in-aid, state assistance, financial support', '1950-01-26'),
(15, '276', 'Taxes on professions, trades, callings and employments', 'States can impose taxes on professions, trades, callings and employments, subject to limits.', 'professional tax, state taxation, tax limits', '1950-01-26'),
(16, '277', 'Savings regarding existing laws on taxes', 'Existing laws relating to taxes continue until altered or repealed by Parliament.', 'existing taxes, tax laws, savings clause', '1950-01-26'),
(17, '278', '[Repealed] Agreement with States in Part B of the First Schedule with regard to certain financial matters', '[Repealed by the Constitution (Seventh Amendment) Act, 1956]', 'repealed article, financial agreements, Part B states', '1950-01-26'),
(18, '279', 'Calculation of net proceeds', 'Net proceeds of a tax calculated as prescribed for distribution between Union and States.', 'tax proceeds, calculation method, revenue distribution', '1950-01-26'),
(19, '279A', 'Goods and Services Tax Council', 'Establishment and functions of GST Council for recommendations on GST-related matters.', 'GST council, tax recommendations, federal coordination', '2016-09-08'),
(20, '280', 'Finance Commission', 'President shall constitute a Finance Commission every five years to make recommendations on financial matters.', 'finance commission, financial recommendations, fiscal relations', '1950-01-26'),
(21, '281', 'Recommendations of the Finance Commission', 'Finance Commission recommendations shall be laid before each House of Parliament.', 'commission recommendations, parliamentary oversight, financial matters', '1950-01-26'),
(22, '282', 'Expenditure defrayable by the Union or a State out of its revenues', 'Union and States may make any grants for any public purpose.', 'public expenditure, grants, financial powers', '1950-01-26'),
(23, '283', 'Custody of Consolidated Funds, Contingency Funds and moneys credited to the Public Accounts', 'Custody and withdrawal of money from these funds as prescribed by law.', 'fund custody, money withdrawal, financial procedure', '1950-01-26'),
(24, '284', 'Custody of suitors deposits and other moneys', 'Custody of suitors deposits and other moneys received by public servants and courts.', 'public money, court deposits, financial custody', '1950-01-26'),
(25, '285', 'Exemption of property of the Union from State taxation', 'Union property exempt from State taxation except as Parliament may provide.', 'tax exemption, union property, state taxation', '1950-01-26'),
(26, '286', 'Restrictions as to imposition of tax on sale or purchase of goods', 'Restrictions on State taxation of goods in interstate trade or commerce.', 'interstate trade, tax restrictions, state taxation', '1950-01-26'),
(27, '287', 'Exemption from taxes on electricity', 'Exemption of Union government consumption of electricity from State taxation.', 'electricity taxation, union exemption, state taxes', '1950-01-26'),
(28, '288', 'Exemption from taxation by States in respect of water or electricity', 'Exemption of certain water and electricity authorities from State taxation.', 'water taxation, electricity taxation, tax exemption', '1950-01-26'),
(29, '289', 'Exemption of property and income of a State from Union taxation', 'State property and income exempt from Union taxation with exceptions.', 'state property, tax exemption, union taxation', '1950-01-26'),
(30, '290', 'Adjustment in respect of certain expenses and pensions', 'Adjustments regarding expenses and pensions between Union and States.', 'pension adjustment, expense sharing, financial arrangements', '1950-01-26'),
(31, '290A', 'Annual payment to certain Devaswom Funds', 'Annual payments to specified Devaswom Funds by certain States.', 'devaswom funds, annual payments, religious institutions', '1956-11-01'),
(32, '291', '[Repealed] Privy purse sums of Rulers', '[Repealed by the Constitution (Twenty-sixth Amendment) Act, 1971]', 'privy purses, repealed article, rulers payment', '1950-01-26'),
(33, '292', 'Borrowing by the Government of India', 'Union government borrowing power within limits set by Parliament.', 'union borrowing, debt limits, financial powers', '1950-01-26'),
(34, '293', 'Borrowing by States', 'State borrowing power subject to conditions and Union consent.', 'state borrowing, union consent, debt regulation', '1950-01-26'),
(35, '294', 'Succession to property, assets, rights, liabilities and obligations', 'Succession of property and assets between Dominion of India and Union of India.', 'property succession, asset transfer, legal obligations', '1950-01-26'),
(36, '295', 'Succession to property, assets, rights, liabilities and obligations in other cases', 'Succession of property and assets between provinces and corresponding States.', 'property succession, provincial assets, state rights', '1950-01-26'),
(37, '296', 'Property accruing by escheat or lapse or as bona vacantia', 'Property accruing by escheat or lapse vests in the Union or State as applicable.', 'escheat property, bona vacantia, property rights', '1950-01-26'),
(38, '297', 'Things of value within territorial waters or continental shelf and resources of exclusive economic zone', 'Maritime resources and territorial waters vest in the Union.', 'maritime resources, territorial waters, union rights', '1950-01-26'),
(39, '298', 'Power to carry on trade', 'Union and State power to carry on trade or business.', 'trade power, business rights, government commerce', '1950-01-26'),
(40, '299', 'Contracts by Union or States', 'Contracts by Union or States must be in prescribed manner and executed by authorized persons.', 'government contracts, legal requirements, contract execution', '1950-01-26'),
(41, '300', 'Suits and proceedings', 'Union and States can sue and be sued in relation to their respective affairs.', 'legal proceedings, government suits, legal rights', '1950-01-26'),
(42, '300A', 'Right to property', 'No person shall be deprived of property save by authority of law.', 'property rights, legal authority, fundamental right', '1978-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `constitutionpart13`
--

CREATE TABLE `constitutionpart13` (
  `SNo` int(11) NOT NULL,
  `ArticleNo` varchar(10) NOT NULL,
  `ArticleDefinition` varchar(255) NOT NULL,
  `ArticleDescription` text NOT NULL,
  `Keywords` varchar(500) DEFAULT NULL,
  `DateAdded` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constitutionpart13`
--

INSERT INTO `constitutionpart13` (`SNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, '301', 'Freedom of trade, commerce and intercourse', 'Trade, commerce and intercourse throughout the territory of India shall be free, subject to other provisions of this Part.', 'free trade, commerce freedom, internal trade, economic unity', '1950-01-26'),
(2, '302', 'Power of Parliament to impose restrictions', 'Parliament may by law impose restrictions on the freedom of trade, commerce or intercourse between one State and another or within any part of the territory of India as may be required in the public interest.', 'trade restrictions, parliamentary powers, public interest', '1950-01-26'),
(3, '303(1)', 'Prohibition of discriminatory laws', 'Neither Parliament nor a State Legislature shall have power to make any law giving preference to one State over another, or discriminating between States by virtue of any entry relating to trade and commerce.', 'trade discrimination, state equality, legislative restriction', '1950-01-26'),
(4, '303(2)', 'Exception for scarcity of goods', 'Nothing in clause (1) shall prevent Parliament from making any law giving preference to one State over another, or making discrimination between States, if it is declared by law that it is necessary to do so for dealing with a situation arising from scarcity of goods in any part of India.', 'scarcity provisions, parliamentary exception, emergency powers', '1950-01-26'),
(5, '304(a)', 'State power to tax', 'States may impose on goods imported from other States any tax to which similar goods manufactured in that State are subject, so as not to discriminate between goods imported and goods manufactured locally.', 'state taxation, non-discrimination, import tax', '1950-01-26'),
(6, '304(b)', 'State power to regulate trade', 'States may impose reasonable restrictions on the freedom of trade, commerce or intercourse with or within that State as may be required in the public interest, provided that no Bill for this purpose shall be introduced or moved in the State Legislature without prior sanction of the President.', 'trade regulation, presidential sanction, state restrictions', '1950-01-26'),
(7, '305', 'Saving of existing laws and State monopolies', 'Nothing in Articles 301 and 303 shall affect the provisions of any existing law, or prevent the State from making any law, relating to any State monopoly.', 'existing laws, state monopolies, legal protection', '1950-01-26'),
(8, '306', '[Repealed] Power of certain States in Part B', '[Repealed by the Constitution (Seventh Amendment) Act, 1956]', 'repealed article, Part B states, historical provision', '1950-01-26'),
(9, '307', 'Appointment of authority for Articles 301 to 304', 'Parliament may by law appoint such authority as it considers appropriate for carrying out the purposes of Articles 301, 302, 303 and 304, and confer on the authority such powers and duties as it thinks necessary.', 'implementing authority, parliamentary appointment, trade regulation', '1950-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `constitutionpart14`
--

CREATE TABLE `constitutionpart14` (
  `SNo` int(11) NOT NULL,
  `ArticleNo` varchar(10) NOT NULL,
  `ArticleDefinition` varchar(255) NOT NULL,
  `ArticleDescription` text NOT NULL,
  `Keywords` varchar(500) DEFAULT NULL,
  `DateAdded` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constitutionpart14`
--

INSERT INTO `constitutionpart14` (`SNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, '308', 'Interpretation', 'In this Part, unless the context otherwise requires, \"State\" means a State specified in the First Schedule.', 'definition, state interpretation, scope', '1950-01-26'),
(2, '309', 'Recruitment and conditions of service of persons serving the Union or a State', 'Subject to the provisions of this Constitution, Acts of the appropriate Legislature may regulate the recruitment and conditions of service of persons appointed to public services and posts in connection with the affairs of the Union or of any State.', 'recruitment rules, service conditions, public service', '1950-01-26'),
(3, '310(1)', 'Tenure of office of persons serving the Union or a State', 'Except as expressly provided by this Constitution, every person who is a member of a defence service or of a civil service of the Union or an all-India service or holds any post connected with defence or any civil post under the Union holds office during the pleasure of the President.', 'service tenure, presidential pleasure, defense service', '1950-01-26'),
(4, '310(2)', 'State services tenure', 'Every person who is a member of a civil service of a State or holds any civil post under a State holds office during the pleasure of the Governor of the State.', 'state service, governor\'s pleasure, civil service', '1950-01-26'),
(5, '311(1)', 'Dismissal, removal or reduction in rank of persons employed in civil capacities under the Union or a State', 'No person who is a member of a civil service or holds a civil post under the Union or a State shall be dismissed or removed by an authority subordinate to that by which he was appointed.', 'dismissal protection, removal authority, civil servants', '1950-01-26'),
(6, '311(2)', 'Procedure for dismissal', 'No civil servant shall be dismissed, removed, or reduced in rank except after an inquiry in which they have been informed of charges and given reasonable opportunity of being heard.', 'inquiry procedure, disciplinary action, hearing opportunity', '1950-01-26'),
(7, '311(2)(a)', 'Exception - Criminal conviction', 'Where a person is dismissed, removed or reduced in rank on the ground of conduct which has led to his conviction on a criminal charge.', 'criminal conviction, disciplinary consequences, service termination', '1950-01-26'),
(8, '311(2)(b)', 'Exception - Impracticability of inquiry', 'Where the authority empowered to dismiss or remove a person or to reduce him in rank is satisfied that for some reason it is not reasonably practicable to hold such inquiry.', 'inquiry exemption, practical impossibility, administrative decision', '1950-01-26'),
(9, '311(2)(c)', 'Exception - President/Governor satisfaction', 'Where the President or Governor is satisfied that in the interest of the security of the State, it is not expedient to hold such inquiry.', 'state security, executive decision, inquiry waiver', '1950-01-26'),
(10, '311(3)', 'Special provision for certain services', 'If any question arises whether it is reasonably practicable to hold inquiry under clause (2), the decision thereon of the authority empowered to dismiss or remove such person or to reduce him in rank shall be final.', 'inquiry decision, authority finality, administrative power', '1950-01-26'),
(11, '312(1)', 'All-India Services', 'Parliament may by law provide for the creation of one or more all-India services common to the Union and the States.', 'all-india services, parliament power, common services', '1950-01-26'),
(12, '312(2)', 'Services existing under law', 'The services known as the Indian Administrative Service and the Indian Police Service shall be deemed to be services created by Parliament under this article.', 'IAS, IPS, existing services', '1950-01-26'),
(13, '312(3)', 'State legislature power', 'The all-India judicial service referred to in clause (1) shall not include any post inferior to that of a district judge.', 'judicial service, district judge, service hierarchy', '1950-01-26'),
(14, '312(4)', 'Law made under clause (1)', 'The law providing for the creation of the all-India judicial service shall contain such provisions for the amendment of Chapter VI of Part VI as may be necessary.', 'judicial service law, constitutional amendment, legal provisions', '1950-01-26'),
(15, '312A(1)', 'Power of Parliament to vary or revoke conditions of service of officers of certain services', 'Parliament may by law vary or revoke, whether prospectively or retrospectively, the conditions of service of officers of Indian Administrative Service, Indian Police Service and Indian Forest Service.', 'service conditions, parliamentary power, civil services', '1950-01-26'),
(16, '312A(2)', 'Effect on existing laws', 'No such law shall have effect unless it is assented to by the President.', 'presidential assent, service laws, legal effect', '1950-01-26'),
(17, '313', 'Transitional provisions', 'Until other provision is made in this behalf under this Constitution, all the laws in force immediately before the commencement of this Constitution relating to any public service or any post continue in force.', 'existing laws, transitional provisions, service continuity', '1950-01-26'),
(18, '314', '[Repealed] Provision for protection of existing officers of certain services', '[Repealed by the Constitution (Twenty-eighth Amendment) Act, 1972]', 'repealed article, officer protection, historical provision', '1950-01-26'),
(19, '315(1)', 'Public Service Commission for the Union and for the States', 'Subject to the provisions of this article, there shall be a Public Service Commission for the Union and a Public Service Commission for each State.', 'UPSC, state PSC, constitutional bodies', '1950-01-26'),
(20, '315(2)', 'Joint State Public Service Commission', 'Two or more States may agree that there shall be one Public Service Commission for that group of States.', 'joint commission, state agreement, shared services', '1950-01-26'),
(21, '315(3)', 'Additional functions', 'The Public Service Commission of a State may agree to serve all or any of the needs of any other State.', 'commission functions, state cooperation, service sharing', '1950-01-26'),
(22, '315(4)', 'Union Public Service Commission serving States', 'The Union Public Service Commission, if requested by the Governor of a State, may agree to serve all or any of the needs of the State.', 'UPSC functions, state requests, service extension', '1950-01-26'),
(23, '316(1)', 'Appointment and term of office of members', 'The Chairman and other members of a Public Service Commission shall be appointed by the President/Governor of the State.', 'commission appointments, chairperson, members', '1950-01-26'),
(24, '316(2)', 'Removal and suspension', 'No member shall be removed from office except by order of the President on the ground of misbehavior after Supreme Court inquiry.', 'member removal, inquiry procedure, presidential order', '1950-01-26'),
(25, '317(1)', 'Removal and suspension of a member of a Public Service Commission', 'Subject to Article 316(2), the Chairman or any other member of a Public Service Commission shall only be removed from office by order of the President on the ground of misbehavior.', 'removal grounds, presidential power, misconduct', '1950-01-26'),
(26, '317(2)', 'Suspension of members', 'The President may suspend the Chairman or other member until report of the Supreme Court is received.', 'member suspension, interim action, presidential power', '1950-01-26'),
(27, '317(3)', 'Acting Chairman', 'The President may appoint one of the members to act as Chairman in case of absence of the Chairman.', 'acting appointment, temporary chairman, commission functioning', '1950-01-26'),
(28, '318', 'Power to make regulations as to conditions of service of members and staff', 'The President/Governor may make regulations regarding conditions of service of Public Service Commission members and staff.', 'service regulations, commission staff, conditions of service', '1950-01-26'),
(29, '319', 'Prohibition as to the holding of offices by members on ceasing to be members', 'Chairman and members are ineligible for further employment under Government of India or State after ceasing to hold office.', 'post-retirement restrictions, employment prohibition, service restrictions', '1950-01-26'),
(30, '320(1)', 'Functions of Public Service Commissions', 'Public Service Commissions shall conduct examinations for appointments to Union/State services.', 'commission functions, examinations, appointments', '1950-01-26'),
(31, '320(2)', 'Consultation requirement', 'Public Service Commission shall be consulted on matters relating to methods of recruitment, principles of promotion, and disciplinary matters.', 'consultation matters, recruitment methods, disciplinary issues', '1950-01-26'),
(32, '320(3)', 'Additional functions', 'The Union Public Service Commission or the State Public Service Commission shall be consulted on all matters relating to recruitment, promotion, and disciplinary matters.', 'consultation scope, service matters, commission role', '1950-01-26'),
(33, '320(4)', 'Additional functions', 'Additional functions may be conferred on Public Service Commission by an Act of Parliament or State Legislature.', 'additional duties, legislative power, commission scope', '1950-01-26'),
(34, '320(5)', 'Exception for certain services', 'Consultation with Commission not necessary for certain services and posts specified by President/Governor.', 'consultation exemption, special services, executive power', '1950-01-26'),
(35, '321', 'Power to extend functions of Public Service Commissions', 'An Act of Parliament/State Legislature may provide for the exercise of additional functions by the Union/State Public Service Commission.', 'extended functions, legislative power, commission duties', '1950-01-26'),
(36, '322', 'Expenses of Public Service Commissions', 'The expenses of the Public Service Commissions shall be charged on the Consolidated Fund of India/State.', 'commission expenses, consolidated fund, financial provision', '1950-01-26'),
(37, '323', 'Reports of Public Service Commissions', 'Public Service Commissions shall present annual reports to President/Governor regarding their work.', 'annual reports, commission work, accountability', '1950-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `constitutionpart15`
--

CREATE TABLE `constitutionpart15` (
  `SNo` int(11) NOT NULL,
  `ArticleNo` varchar(10) DEFAULT NULL,
  `ArticleDefinition` varchar(200) DEFAULT NULL,
  `ArticleDescription` text DEFAULT NULL,
  `Keywords` varchar(500) DEFAULT NULL,
  `DateAdded` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constitutionpart15`
--

INSERT INTO `constitutionpart15` (`SNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, '324', 'Superintendence, direction and control of elections to be vested in an Election Commission', 'The Election Commission shall consist of the Chief Election Commissioner and such number of other Election Commissioners as the President may fix. Their appointments, tenure, and removal process are specified. The Commission has complete authority over election machinery, including appointment of election supervisors and conducting all elections to Parliament and State Legislatures.', 'Election Commission, Chief Election Commissioner, election supervision, electoral rolls, independent constitutional body', '1950-01-26'),
(2, '324(1)', 'Powers of Election Commission', 'Superintendence, direction and control of elections to Parliament, State Legislatures, and offices of President and Vice-President vested in Election Commission', 'election powers, constitutional authority, election supervision', '1950-01-26'),
(3, '324(2)', 'Composition of Election Commission', 'The Election Commission shall consist of Chief Election Commissioner and such number of other Election Commissioners as President may fix from time to time', 'CEC appointment, Election Commissioners, commission structure', '1950-01-26'),
(4, '324(3)', 'Appointment of Regional Commissioners', 'The President may appoint Regional Commissioners to assist Election Commission before each general election to House of People or State Legislative Assembly', 'Regional Commissioners, election assistance, appointment powers', '1950-01-26'),
(5, '324(4)', 'Staff of Election Commission', 'The conditions of service and tenure of office of the Election Commissioners and Regional Commissioners shall be determined by the President', 'service conditions, tenure, staff appointments', '1950-01-26'),
(6, '324(5)', 'Removal of Election Commissioners', 'The Chief Election Commissioner shall not be removed from office except in like manner and grounds as a Supreme Court Judge. Other Election Commissioners cannot be removed except on recommendation of Chief Election Commissioner', 'removal process, service protection, constitutional safeguards', '1950-01-26'),
(7, '324(6)', 'Rule-making power', 'The President or Governor of a State shall provide necessary staff to Election Commission when requested for discharge of functions', 'administrative support, election staff, resource allocation', '1950-01-26'),
(8, '325', 'No person to be ineligible for inclusion in electoral roll on grounds of religion, race, caste or sex', 'Universal adult suffrage guaranteed without discrimination based on religion, race, caste or sex for inclusion in electoral rolls', 'universal suffrage, non-discrimination, electoral rolls, voter rights', '1950-01-26'),
(9, '326', 'Elections to the House of the People and Legislative Assemblies of States to be on the basis of adult suffrage', 'Elections to Lok Sabha and State Legislative Assemblies to be based on adult suffrage. Every citizen above 18 years has right to vote unless disqualified under Constitution or law', 'adult suffrage, voting age, universal franchise, democratic rights', '1950-01-26'),
(10, '327', 'Power of Parliament to make provision with respect to elections to Legislatures', 'Parliament may make laws regarding all matters relating to elections to either House of Parliament or State Legislatures including preparation of electoral rolls', 'election laws, parliamentary power, electoral legislation', '1950-01-26'),
(11, '328', 'Power of Legislature of a State to make provision with respect to elections to such Legislature', 'State Legislature may make laws regarding elections to such Legislature, subject to provisions of Constitution and Parliamentary laws', 'state election laws, legislative powers, state autonomy', '1950-01-26'),
(12, '329', 'Bar to interference by courts in electoral matters', 'No election to Parliament or State Legislature shall be called in question except by election petition presented to such authority as prescribed by law', 'election disputes, judicial intervention, election petitions, dispute resolution', '1950-01-26'),
(13, '329(A)', 'Special provision as to elections to Parliament in the case of Prime Minister and Speaker [Repealed]', 'This article was inserted by 39th Amendment in 1975 and later repealed by 44th Amendment in 1978. It had provided special protection to election of Prime Minister and Speaker', 'repealed article, emergency period, constitutional amendments', '1975-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `constitutionpart16`
--

CREATE TABLE `constitutionpart16` (
  `SNo` int(11) NOT NULL,
  `ArticleNo` varchar(10) DEFAULT NULL,
  `ArticleDefinition` varchar(200) DEFAULT NULL,
  `ArticleDescription` text DEFAULT NULL,
  `Keywords` varchar(500) DEFAULT NULL,
  `DateAdded` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constitutionpart16`
--

INSERT INTO `constitutionpart16` (`SNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, '330', 'Reservation of seats for Scheduled Castes and Scheduled Tribes in the House of the People', 'Provides for reservation of seats for SC and ST in Lok Sabha. Seats reserved in proportion to population in each state/UT. Special provisions for scheduled tribes in autonomous districts of Assam.', 'reservation, Lok Sabha, SC, ST, proportional representation', '1950-01-26'),
(2, '331', 'Representation of the Anglo-Indian community in the House of the People', 'The President may nominate up to two members of the Anglo-Indian community to Lok Sabha if the community is not adequately represented.', 'Anglo-Indian, nomination, representation, Lok Sabha', '1950-01-26'),
(3, '332', 'Reservation of seats for Scheduled Castes and Scheduled Tribes in the Legislative Assemblies of the States', 'Seats shall be reserved for SC and ST in State Legislative Assemblies in proportion to their population. Special provisions for tribal areas in Assam, Meghalaya, Tripura, and Mizoram.', 'state assemblies, reservation, SC, ST, tribal areas', '1950-01-26'),
(4, '333', 'Representation of the Anglo-Indian community in the Legislative Assemblies of the States', 'Governor may nominate one member of Anglo-Indian community to State Legislative Assembly if community is not adequately represented.', 'Anglo-Indian, state assembly, nomination, representation', '1950-01-26'),
(5, '334', 'Reservation of seats and special representation to cease after certain period', 'Originally provided for reservations for 10 years, extended periodically. Current extension is up to January 25, 2030 through 104th Amendment.', 'reservation period, extension, sunset clause, time limit', '1950-01-26'),
(6, '335', 'Claims of Scheduled Castes and Scheduled Tribes to services and posts', 'Claims of SC and ST shall be taken into consideration in making appointments to services and posts, consistent with maintaining administration efficiency.', 'government services, appointments, administrative efficiency, representation', '1950-01-26'),
(7, '336', 'Special provision for Anglo-Indian community in certain services', 'Special provisions for Anglo-Indian community in railway, customs, postal, and telegraph services for first two years after Constitution, with gradual reduction over next two years.', 'Anglo-Indian, government services, special provision, transitional arrangement', '1950-01-26'),
(8, '337', 'Special provision with respect to educational grants for Anglo-Indian community', 'Special educational grants for Anglo-Indian community where they run educational institutions, with gradual reduction over time.', 'education grants, Anglo-Indian, educational institutions, financial assistance', '1950-01-26'),
(9, '338', 'National Commission for Scheduled Castes', 'Establishes National Commission for SC to investigate safeguards, participate in planning for development, evaluate progress, and present annual reports. Defines powers and functions of Commission.', 'SC Commission, constitutional body, safeguards, monitoring', '1950-01-26'),
(10, '338A', 'National Commission for Scheduled Tribes', 'Establishes separate National Commission for ST with similar powers and functions as SC Commission. Created through 89th Amendment Act, 2003.', 'ST Commission, tribal welfare, constitutional body, monitoring', '2003-09-19'),
(11, '338B', 'National Commission for Backward Classes', 'Establishes National Commission for Socially and Educationally Backward Classes. Added by 102nd Amendment Act, 2018.', 'backward classes, constitutional body, social justice, monitoring', '2018-08-11'),
(12, '339', 'Control of the Union over the administration of Scheduled Areas and the welfare of Scheduled Tribes', 'Union government has power to give directions to states regarding administration of scheduled areas and welfare of scheduled tribes.', 'scheduled areas, tribal welfare, union control, administrative powers', '1950-01-26'),
(13, '340', 'Appointment of a Commission to investigate the conditions of backward classes', 'President may appoint commission to investigate conditions of socially and educationally backward classes and make recommendations.', 'backward classes commission, social investigation, recommendations', '1950-01-26'),
(14, '341', 'Scheduled Castes', 'President may specify castes, races, or tribes as Scheduled Castes in relation to a state or union territory. Parliament may modify list by law.', 'SC specification, presidential power, constitutional recognition', '1950-01-26'),
(15, '342', 'Scheduled Tribes', 'President may specify tribes or tribal communities as Scheduled Tribes in relation to a state or union territory. Parliament may modify list by law.', 'ST specification, presidential power, tribal recognition', '1950-01-26'),
(16, '342A', 'Socially and educationally backward classes', 'President may specify socially and educationally backward classes for states/UTs. Central list to be maintained. Added by 102nd Amendment Act, 2018.', 'backward classes, presidential specification, central list, social justice', '2018-08-11');

-- --------------------------------------------------------

--
-- Table structure for table `constitutionpart17`
--

CREATE TABLE `constitutionpart17` (
  `SNo` int(11) NOT NULL,
  `ArticleNo` varchar(10) DEFAULT NULL,
  `ArticleDefinition` varchar(200) DEFAULT NULL,
  `ArticleDescription` text DEFAULT NULL,
  `Keywords` varchar(500) DEFAULT NULL,
  `DateAdded` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constitutionpart17`
--

INSERT INTO `constitutionpart17` (`SNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, '343', 'Official language of the Union', 'Hindi in Devanagari script shall be the official language of the Union. English to continue for 15 years from commencement of Constitution. Parliament may provide for continued use of English after 15 years by law.', 'Hindi, official language, Devanagari script, English usage', '1950-01-26'),
(2, '343(1)', 'Declaration of Hindi as official language', 'Declares Hindi in Devanagari script as the official language of the Union of India.', 'Hindi, Devanagari, official declaration, Union language', '1950-01-26'),
(3, '343(2)', 'Continuation of English language', 'Authorizes continued use of English language for all official purposes for 15 years from constitution commencement.', 'English language, transition period, official purposes', '1950-01-26'),
(4, '343(3)', 'Parliamentary provision for English usage', 'Parliament may provide by law for continued use of English beyond 15-year period for specified purposes.', 'parliamentary power, English usage, language law', '1950-01-26'),
(5, '344', 'Commission and Committee of Parliament on official language', 'President to constitute Official Language Commission after 5 years and on expiration of 10 years to make recommendations.', 'language commission, parliamentary committee, recommendations', '1950-01-26'),
(6, '344(1)', 'Constitution of Language Commission', 'Details appointment of Language Commission by President and its composition.', 'commission appointment, language experts, official recommendations', '1950-01-26'),
(7, '345', 'Official language or languages of a State', 'State Legislature may adopt any language(s) used in state as official language(s). Until then, English to continue for official purposes.', 'state language, legislative power, language adoption', '1950-01-26'),
(8, '346', 'Official language for communication between one State and another or between a State and the Union', 'Official language for inter-state and state-union communications shall be English, unless agreed otherwise between states.', 'interstate communication, official correspondence, language protocol', '1950-01-26'),
(9, '347', 'Special provision relating to language spoken by a section of the population of a State', 'President may direct recognition of language as officially recognized for specified purposes if substantial population desires it.', 'language recognition, population demand, presidential directive', '1950-01-26'),
(10, '348', 'Language to be used in the Supreme Court and in the High Courts and for Acts, Bills, etc.', 'English shall be used in Supreme Court, High Courts, and for legislative texts unless Parliament provides otherwise.', 'court language, legislative texts, English usage', '1950-01-26'),
(11, '348(1)', 'Language of Supreme Court and High Courts', 'Specifies English as language for all proceedings of Supreme Court and High Courts.', 'court proceedings, judicial language, English medium', '1950-01-26'),
(12, '349', 'Special procedure for enactment of certain laws relating to language', 'Special procedure for bills affecting language use, requiring Presidential consideration of Language Commission recommendations.', 'language bills, special procedure, presidential assent', '1950-01-26'),
(13, '350', 'Language to be used in representations for redress of grievances', 'Every person has right to submit representations for grievance redressal in any language used in India.', 'grievance redressal, language rights, representation', '1950-01-26'),
(14, '350A', 'Facilities for instruction in mother-tongue at primary stage', 'States to provide primary education in mother tongue to linguistic minority children.', 'mother tongue education, linguistic minorities, primary education', '1956-01-26'),
(15, '350B', 'Special Officer for linguistic minorities', 'Special Officer to be appointed by President to investigate matters relating to linguistic minorities.', 'linguistic minorities, special officer, minority rights', '1956-01-26'),
(16, '351', 'Directive for development of the Hindi language', 'Union to promote Hindi while drawing vocabulary from Sanskrit and other languages, preserving its composite culture.', 'Hindi development, vocabulary enrichment, composite culture', '1950-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `constitution_articles`
--

CREATE TABLE `constitution_articles` (
  `SNo` int(11) NOT NULL,
  `PartNo` int(11) NOT NULL,
  `ArticleNo` varchar(20) NOT NULL,
  `ArticleDefinition` varchar(255) NOT NULL,
  `ArticleDescription` text DEFAULT NULL,
  `Keywords` varchar(255) DEFAULT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constitution_articles`
--

INSERT INTO `constitution_articles` (`SNo`, `PartNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, 1, '1', 'Name and territory of the Union', 'India, that is Bharat, shall be a Union of States.', 'territory, union, states, name', '2025-02-25 06:47:04'),
(2, 1, '1(1)', 'Name of the Union', 'India, that is Bharat, shall be a Union of States.', 'name, india, bharat', '2025-02-25 06:47:04'),
(3, 1, '1(2)', 'States and territories of the Union', 'The States and the territories thereof shall be as specified in the First Schedule.', 'states, territories, first schedule', '2025-02-25 06:47:04'),
(4, 1, '1(3)', 'Territory of India', 'The territory of India shall comprise the territories of the States, the Union territories and such other territories as may be acquired.', 'territory, states, acquisition', '2025-02-25 06:47:04'),
(5, 1, '2', 'Admission or establishment of new States', 'Parliament may by law admit new States into the Union of India or establish new States.', 'new states, admission, parliament', '2025-02-25 06:47:04'),
(6, 1, '3', 'Formation of new States and alteration of areas, boundaries or names of existing States', 'Powers of Parliament to form new States and alter areas, boundaries or names of existing States.', 'boundaries, areas, states, alteration', '2025-02-25 06:47:04'),
(7, 1, '3(a)', 'Formation of new State', 'Form a new State by separation of territory from any State or by uniting two or more States or parts of States or by uniting any territory to a part of any State.', 'new state, separation, uniting', '2025-02-25 06:47:04'),
(8, 1, '3(b)', 'Increase area of State', 'Increase the area of any State.', 'increase, area, state', '2025-02-25 06:47:04'),
(9, 1, '3(c)', 'Diminish area of State', 'Diminish the area of any State.', 'diminish, area, state', '2025-02-25 06:47:04'),
(10, 1, '3(d)', 'Alter boundaries of State', 'Alter the boundaries of any State.', 'alter, boundaries, state', '2025-02-25 06:47:04'),
(11, 1, '3(e)', 'Alter name of State', 'Alter the name of any State.', 'alter, name, state', '2025-02-25 06:47:04'),
(12, 1, '4', 'Laws made under articles 2 and 3 to provide for the amendment of the First and the Fourth Schedules and supplemental, incidental and consequential matters', 'Laws made for admission or establishment of new States or alteration of boundaries.', 'amendment, schedules, supplemental', '2025-02-25 06:47:04'),
(13, 1, '4(1)', 'Amendment of First and Fourth Schedules', 'Any law referred to in article 2 or article 3 shall contain such provisions for the amendment of the First Schedule and the Fourth Schedule as may be necessary.', 'amendment, schedules, necessary', '2025-02-25 06:47:04'),
(14, 1, '4(2)', 'No amendment to be a constitutional amendment', 'No such law as aforesaid shall be deemed to be an amendment of this Constitution for the purposes of article 368.', 'amendment, constitution, article 368', '2025-02-25 06:47:04'),
(15, 2, '5', 'Citizenship at the commencement of the Constitution', 'Persons domiciled in India who were born in India or either of whose parents were born in India or who had been ordinarily resident in India for not less than 5 years are citizens of India.', 'citizenship, domiciled, commencement', '2025-02-25 06:47:04'),
(16, 2, '6', 'Rights of citizenship of certain persons who have migrated to India from Pakistan', 'Provisions for migrants from Pakistan to India before 19th July, 1948.', 'migration, pakistan, citizenship', '2025-02-25 06:47:04'),
(17, 2, '7', 'Rights of citizenship of certain migrants to Pakistan', 'Provisions for persons who migrated to Pakistan but returned to India on permits.', 'pakistan, migration, permits', '2025-02-25 06:47:04'),
(18, 2, '8', 'Rights of citizenship of certain persons of Indian origin residing outside India', 'Provisions for persons of Indian origin residing outside India.', 'non-resident, origin, citizenship', '2025-02-25 06:47:04'),
(19, 2, '9', 'Persons voluntarily acquiring citizenship of a foreign State not to be citizens', 'Any person who voluntarily acquires citizenship of a foreign state will not be a citizen of India.', 'foreign citizenship, voluntary acquisition', '2025-02-25 06:47:04'),
(20, 2, '10', 'Continuance of the rights of citizenship', 'Every person who is or is deemed to be a citizen of India shall continue to be such citizen, subject to the provisions of any law made by Parliament.', 'continuance, rights, citizenship', '2025-02-25 06:47:04'),
(21, 2, '11', 'Parliament to regulate the right of citizenship by law', 'Parliament to regulate the right of citizenship by law.', 'parliament, regulate, law, citizenship', '2025-02-25 06:47:04'),
(22, 1, '1', 'Name and territory of the Union', 'India, that is Bharat, shall be a Union of States.', 'territory, union, states, name', '2025-02-25 08:23:31'),
(23, 1, '1(1)', 'Name of the Union', 'India, that is Bharat, shall be a Union of States.', 'name, india, bharat', '2025-02-25 08:23:31'),
(24, 1, '1(2)', 'States and territories of the Union', 'The States and the territories thereof shall be as specified in the First Schedule.', 'states, territories, first schedule', '2025-02-25 08:23:31'),
(25, 1, '1(3)', 'Territory of India', 'The territory of India shall comprise the territories of the States, the Union territories and such other territories as may be acquired.', 'territory, states, acquisition', '2025-02-25 08:23:31'),
(26, 1, '2', 'Admission or establishment of new States', 'Parliament may by law admit new States into the Union of India or establish new States.', 'new states, admission, parliament', '2025-02-25 08:23:31'),
(27, 1, '3', 'Formation of new States and alteration of areas, boundaries or names of existing States', 'Powers of Parliament to form new States and alter areas, boundaries or names of existing States.', 'boundaries, areas, states, alteration', '2025-02-25 08:23:31'),
(28, 1, '3(a)', 'Formation of new State', 'Form a new State by separation of territory from any State or by uniting two or more States or parts of States or by uniting any territory to a part of any State.', 'new state, separation, uniting', '2025-02-25 08:23:31'),
(29, 1, '3(b)', 'Increase area of State', 'Increase the area of any State.', 'increase, area, state', '2025-02-25 08:23:31'),
(30, 1, '3(c)', 'Diminish area of State', 'Diminish the area of any State.', 'diminish, area, state', '2025-02-25 08:23:31'),
(31, 1, '3(d)', 'Alter boundaries of State', 'Alter the boundaries of any State.', 'alter, boundaries, state', '2025-02-25 08:23:31'),
(32, 1, '3(e)', 'Alter name of State', 'Alter the name of any State.', 'alter, name, state', '2025-02-25 08:23:31'),
(33, 1, '4', 'Laws made under articles 2 and 3 to provide for the amendment of the First and the Fourth Schedules and supplemental, incidental and consequential matters', 'Laws made for admission or establishment of new States or alteration of boundaries.', 'amendment, schedules, supplemental', '2025-02-25 08:23:31'),
(34, 1, '4(1)', 'Amendment of First and Fourth Schedules', 'Any law referred to in article 2 or article 3 shall contain such provisions for the amendment of the First Schedule and the Fourth Schedule as may be necessary.', 'amendment, schedules, necessary', '2025-02-25 08:23:31'),
(35, 1, '4(2)', 'No amendment to be a constitutional amendment', 'No such law as aforesaid shall be deemed to be an amendment of this Constitution for the purposes of article 368.', 'amendment, constitution, article 368', '2025-02-25 08:23:31'),
(36, 2, '5', 'Citizenship at the commencement of the Constitution', 'Persons domiciled in India who were born in India or either of whose parents were born in India or who had been ordinarily resident in India for not less than 5 years are citizens of India.', 'citizenship, domiciled, commencement', '2025-02-25 08:23:31'),
(37, 2, '6', 'Rights of citizenship of certain persons who have migrated to India from Pakistan', 'Provisions for migrants from Pakistan to India before 19th July, 1948.', 'migration, pakistan, citizenship', '2025-02-25 08:23:31'),
(38, 2, '7', 'Rights of citizenship of certain migrants to Pakistan', 'Provisions for persons who migrated to Pakistan but returned to India on permits.', 'pakistan, migration, permits', '2025-02-25 08:23:31'),
(39, 2, '8', 'Rights of citizenship of certain persons of Indian origin residing outside India', 'Provisions for persons of Indian origin residing outside India.', 'non-resident, origin, citizenship', '2025-02-25 08:23:31'),
(40, 2, '9', 'Persons voluntarily acquiring citizenship of a foreign State not to be citizens', 'Any person who voluntarily acquires citizenship of a foreign state will not be a citizen of India.', 'foreign citizenship, voluntary acquisition', '2025-02-25 08:23:31'),
(41, 2, '10', 'Continuance of the rights of citizenship', 'Every person who is or is deemed to be a citizen of India shall continue to be such citizen, subject to the provisions of any law made by Parliament.', 'continuance, rights, citizenship', '2025-02-25 08:23:31'),
(42, 2, '11', 'Parliament to regulate the right of citizenship by law', 'Parliament to regulate the right of citizenship by law.', 'parliament, regulate, law, citizenship', '2025-02-25 08:23:31'),
(43, 1, '1', 'Name and territory of the Union', 'India, that is Bharat, shall be a Union of States.', 'territory, union, states, name', '2025-02-25 08:25:16'),
(44, 1, '1(1)', 'Name of the Union', 'India, that is Bharat, shall be a Union of States.', 'name, india, bharat', '2025-02-25 08:25:16'),
(45, 1, '1(2)', 'States and territories of the Union', 'The States and the territories thereof shall be as specified in the First Schedule.', 'states, territories, first schedule', '2025-02-25 08:25:16'),
(46, 1, '1(3)', 'Territory of India', 'The territory of India shall comprise the territories of the States, the Union territories and such other territories as may be acquired.', 'territory, states, acquisition', '2025-02-25 08:25:16'),
(47, 1, '2', 'Admission or establishment of new States', 'Parliament may by law admit new States into the Union of India or establish new States.', 'new states, admission, parliament', '2025-02-25 08:25:16'),
(48, 1, '3', 'Formation of new States and alteration of areas, boundaries or names of existing States', 'Powers of Parliament to form new States and alter areas, boundaries or names of existing States.', 'boundaries, areas, states, alteration', '2025-02-25 08:25:16'),
(49, 1, '3(a)', 'Formation of new State', 'Form a new State by separation of territory from any State or by uniting two or more States or parts of States or by uniting any territory to a part of any State.', 'new state, separation, uniting', '2025-02-25 08:25:16'),
(50, 1, '3(b)', 'Increase area of State', 'Increase the area of any State.', 'increase, area, state', '2025-02-25 08:25:16'),
(51, 1, '3(c)', 'Diminish area of State', 'Diminish the area of any State.', 'diminish, area, state', '2025-02-25 08:25:16'),
(52, 1, '3(d)', 'Alter boundaries of State', 'Alter the boundaries of any State.', 'alter, boundaries, state', '2025-02-25 08:25:16'),
(53, 1, '3(e)', 'Alter name of State', 'Alter the name of any State.', 'alter, name, state', '2025-02-25 08:25:16'),
(54, 1, '4', 'Laws made under articles 2 and 3 to provide for the amendment of the First and the Fourth Schedules and supplemental, incidental and consequential matters', 'Laws made for admission or establishment of new States or alteration of boundaries.', 'amendment, schedules, supplemental', '2025-02-25 08:25:16'),
(55, 1, '4(1)', 'Amendment of First and Fourth Schedules', 'Any law referred to in article 2 or article 3 shall contain such provisions for the amendment of the First Schedule and the Fourth Schedule as may be necessary.', 'amendment, schedules, necessary', '2025-02-25 08:25:16'),
(56, 1, '4(2)', 'No amendment to be a constitutional amendment', 'No such law as aforesaid shall be deemed to be an amendment of this Constitution for the purposes of article 368.', 'amendment, constitution, article 368', '2025-02-25 08:25:16'),
(57, 2, '5', 'Citizenship at the commencement of the Constitution', 'Persons domiciled in India who were born in India or either of whose parents were born in India or who had been ordinarily resident in India for not less than 5 years are citizens of India.', 'citizenship, domiciled, commencement', '2025-02-25 08:25:16'),
(58, 2, '6', 'Rights of citizenship of certain persons who have migrated to India from Pakistan', 'Provisions for migrants from Pakistan to India before 19th July, 1948.', 'migration, pakistan, citizenship', '2025-02-25 08:25:16'),
(59, 2, '7', 'Rights of citizenship of certain migrants to Pakistan', 'Provisions for persons who migrated to Pakistan but returned to India on permits.', 'pakistan, migration, permits', '2025-02-25 08:25:16'),
(60, 2, '8', 'Rights of citizenship of certain persons of Indian origin residing outside India', 'Provisions for persons of Indian origin residing outside India.', 'non-resident, origin, citizenship', '2025-02-25 08:25:16'),
(61, 2, '9', 'Persons voluntarily acquiring citizenship of a foreign State not to be citizens', 'Any person who voluntarily acquires citizenship of a foreign state will not be a citizen of India.', 'foreign citizenship, voluntary acquisition', '2025-02-25 08:25:16'),
(62, 2, '10', 'Continuance of the rights of citizenship', 'Every person who is or is deemed to be a citizen of India shall continue to be such citizen, subject to the provisions of any law made by Parliament.', 'continuance, rights, citizenship', '2025-02-25 08:25:16'),
(63, 2, '11', 'Parliament to regulate the right of citizenship by law', 'Parliament to regulate the right of citizenship by law.', 'parliament, regulate, law, citizenship', '2025-02-25 08:25:16'),
(64, 3, '12', 'Definition of State', 'Definition of the State including the Government and Parliament of India, Government and Legislature of States, and local authorities.', 'definition, state, government', '2025-02-25 08:25:17'),
(65, 3, '13', 'Laws inconsistent with or in derogation of the fundamental rights', 'Laws inconsistent with fundamental rights are void to the extent of inconsistency.', 'inconsistent laws, void, fundamental rights', '2025-02-25 08:25:17'),
(66, 3, '13(1)', 'Laws in force before the constitution', 'All laws in force before the commencement of this Constitution, inconsistent with the provisions of this Part, shall, to the extent of such inconsistency, be void.', 'laws in force, void, inconsistency', '2025-02-25 08:25:17'),
(67, 3, '13(2)', 'Laws made after the constitution', 'The State shall not make any law which takes away or abridges the rights conferred by this Part and any law made in contravention of this clause shall, to the extent of the contravention, be void.', 'state, abridgement, void', '2025-02-25 08:25:17'),
(68, 3, '13(3)', 'Definition of law', 'In this article, \"law\" includes any Ordinance, order, bye-law, rule, regulation, notification, custom or usage having in the territory of India the force of law.', 'definition, law, ordinance', '2025-02-25 08:25:17'),
(69, 3, '13(4)', 'Article 368 amendment', 'Nothing in this article shall apply to any amendment of this Constitution made under article 368.', 'amendment, constitution, article 368', '2025-02-25 08:25:17'),
(70, 3, '14', 'Equality before law', 'The State shall not deny to any person equality before the law or the equal protection of the laws within the territory of India.', 'equality, law, protection', '2025-02-25 08:25:17'),
(71, 3, '15', 'Prohibition of discrimination on grounds of religion, race, caste, sex or place of birth', 'The State shall not discriminate against any citizen on grounds only of religion, race, caste, sex, place of birth or any of them.', 'discrimination, religion, race, caste, sex', '2025-02-25 08:25:17'),
(72, 3, '15(1)', 'State non-discrimination', 'The State shall not discriminate against any citizen on grounds only of religion, race, caste, sex, place of birth or any of them.', 'state, discrimination, grounds', '2025-02-25 08:25:17'),
(73, 3, '15(2)', 'Public places access', 'No citizen shall, on grounds only of religion, race, caste, sex, place of birth or any of them, be subject to any disability, liability, restriction or condition with regard to access to shops, public restaurants, etc.', 'public places, access, restriction', '2025-02-25 08:25:17'),
(74, 3, '15(3)', 'Special provisions for women and children', 'Nothing in this article shall prevent the State from making any special provision for women and children.', 'special provision, women, children', '2025-02-25 08:25:17'),
(75, 3, '15(4)', 'Special provisions for advancement of socially and educationally backward classes', 'Nothing in this article shall prevent the State from making any special provision for the advancement of any socially and educationally backward classes of citizens or for the Scheduled Castes and the Scheduled Tribes.', 'backward classes, advancement, special provision', '2025-02-25 08:25:17'),
(76, 3, '15(5)', 'Special provisions for admission to educational institutions', 'Nothing in this article or in clause (g) of clause (1) of article 19 shall prevent the State from making any special provision, by law, for the advancement of any socially and educationally backward classes of citizens or for the Scheduled Castes or the Scheduled Tribes in so far as such special provisions relate to their admission to educational institutions.', 'admission, educational institutions, backward classes', '2025-02-25 08:25:17'),
(77, 3, '15(6)', 'Special provisions for economically weaker sections', 'Nothing in this article or article 16 shall prevent the State from making any special provision for the advancement of any economically weaker sections of citizens.', 'economically weaker sections, advancement, special provision', '2025-02-25 08:25:17'),
(78, 3, '16', 'Equality of opportunity in matters of public employment', 'There shall be equality of opportunity for all citizens in matters relating to employment or appointment to any office under the State.', 'equality, opportunity, public employment', '2025-02-25 08:25:17'),
(79, 3, '16(1)', 'Equal opportunity in public employment', 'There shall be equality of opportunity for all citizens in matters relating to employment or appointment to any office under the State.', 'equality, opportunity, public employment', '2025-02-25 08:25:17'),
(80, 3, '16(2)', 'No discrimination in public employment', 'No citizen shall, on grounds only of religion, race, caste, sex, descent, place of birth, residence or any of them, be ineligible for, or discriminated against in respect of, any employment or office under the State.', 'discrimination, ineligibility, grounds', '2025-02-25 08:25:17'),
(81, 3, '16(3)', 'Parliament may prescribe residence requirement', 'Nothing in this article shall prevent Parliament from making any law prescribing, in regard to a class or classes of employment or appointment, a requirement as to residence within that State.', 'parliament, residence requirement, employment', '2025-02-25 08:25:17'),
(82, 3, '16(4)', 'Reservation for backward classes', 'Nothing in this article shall prevent the State from making any provision for the reservation of appointments or posts in favor of any backward class of citizens which is not adequately represented in the services under the State.', 'reservation, backward class, adequate representation', '2025-02-25 08:25:17'),
(83, 3, '16(4A)', 'Reservation in promotion', 'Nothing in this article shall prevent the State from making any provision for reservation in matters of promotion to any class or classes of posts in the services under the State in favor of the Scheduled Castes and the Scheduled Tribes.', 'reservation, promotion, scheduled castes', '2025-02-25 08:25:17'),
(84, 3, '16(4B)', 'Unfilled vacancies carried forward', 'Nothing in this article shall prevent the State from considering any unfilled vacancies of a year reserved for being filled up in that year in accordance with any provision for reservation made under clause (4) or clause (4A) as a separate class of vacancies to be filled up in any succeeding year or years.', 'unfilled vacancies, carried forward, separate class', '2025-02-25 08:25:17'),
(85, 3, '16(5)', 'Religious institutions employment', 'Nothing in this article shall affect the operation of any law which provides that the incumbent of an office in connection with the affairs of any religious or denominational institution or any member of the governing body thereof shall be a person professing a particular religion or belonging to a particular denomination.', 'religious institution, employment, denomination', '2025-02-25 08:25:17'),
(86, 3, '16(6)', 'Reservation for economically weaker sections', 'Nothing in this article shall prevent the State from making any provision for the reservation of appointments or posts in favor of any economically weaker sections of citizens.', 'reservation, economically weaker sections, appointments', '2025-02-25 08:25:17'),
(87, 3, '17', 'Abolition of Untouchability', 'Untouchability is abolished and its practice in any form is forbidden.', 'untouchability, abolition, forbidden', '2025-02-25 08:25:17'),
(88, 3, '18', 'Abolition of titles', 'No title shall be conferred by the State, and no citizen of India shall accept any title from any foreign State.', 'titles, abolition, foreign state', '2025-02-25 08:25:17'),
(89, 3, '18(1)', 'No titles by state', 'No title, not being a military or academic distinction, shall be conferred by the State.', 'titles, state, military or academic distinction', '2025-02-25 08:25:17'),
(90, 3, '18(2)', 'No titles by citizens from foreign state', 'No citizen of India shall accept any title from any foreign State.', 'titles, foreign state, citizens', '2025-02-25 08:25:17'),
(91, 3, '18(3)', 'No titles by non-citizens from foreign state', 'No person who is not a citizen of India shall, while he holds any office of profit or trust under the State, accept without the consent of the President any title from any foreign State.', 'titles, foreign state, non-citizens', '2025-02-25 08:25:17'),
(92, 3, '18(4)', 'No acceptance of gifts by officials without Presidents consent', 'No person holding any office of profit or trust under the State shall, without the consent of the President, accept any present, emolument, or office of any kind from or under any foreign State.', 'presents, foreign state, presidents consent', '2025-02-25 08:25:17'),
(93, 3, '19', 'Protection of certain rights regarding freedom of speech, etc.', 'All citizens shall have the right to freedom of speech and expression, peaceful assembly, form associations or unions, move freely throughout the territory of India, reside and settle in any part of India, and to practice any profession.', 'freedom of speech, assembly, association, movement', '2025-02-25 08:25:17'),
(94, 3, '19(1)(a)', 'Freedom of speech and expression', 'All citizens shall have the right to freedom of speech and expression.', 'speech, expression, freedom', '2025-02-25 08:25:17'),
(95, 3, '19(1)(b)', 'Freedom of peaceful assembly', 'All citizens shall have the right to assemble peaceably and without arms.', 'assembly, peaceful, without arms', '2025-02-25 08:25:17'),
(96, 3, '19(1)(c)', 'Freedom to form associations or unions', 'All citizens shall have the right to form associations or unions or co-operative societies.', 'associations, unions, co-operative societies', '2025-02-25 08:25:17'),
(97, 3, '19(1)(d)', 'Freedom of movement', 'All citizens shall have the right to move freely throughout the territory of India.', 'movement, territory, freely', '2025-02-25 08:25:17'),
(98, 3, '19(1)(e)', 'Freedom to reside and settle', 'All citizens shall have the right to reside and settle in any part of the territory of India.', 'reside, settle, territory', '2025-02-25 08:25:17'),
(99, 3, '19(1)(g)', 'Freedom to practice profession', 'All citizens shall have the right to practice any profession, or to carry on any occupation, trade or business.', 'profession, occupation, trade', '2025-02-25 08:25:17'),
(100, 3, '19(2)', 'Reasonable restrictions on freedom of speech', 'Nothing in sub-clause (a) of clause (1) shall affect the operation of any existing law, or prevent the State from making any law, imposing reasonable restrictions on the exercise of the right conferred by the said sub-clause in the interests of sovereignty and integrity of India, security of the State, friendly relations with foreign States, public order, decency or morality or in relation to contempt of court, defamation or incitement to an offence.', 'restrictions, speech, sovereignty', '2025-02-25 08:25:17'),
(101, 3, '19(3)', 'Reasonable restrictions on freedom of assembly', 'Nothing in sub-clause (b) of clause (1) shall affect the operation of any existing law, or prevent the State from making any law, imposing reasonable restrictions on the exercise of the right conferred by the said sub-clause in the interests of sovereignty and integrity of India or public order.', 'restrictions, assembly, sovereignty', '2025-02-25 08:25:17'),
(102, 3, '19(4)', 'Reasonable restrictions on freedom of associations', 'Nothing in sub-clause (c) of clause (1) shall affect the operation of any existing law, or prevent the State from making any law, imposing reasonable restrictions on the exercise of the right conferred by the said sub-clause in the interests of sovereignty and integrity of India or public order or morality.', 'restrictions, associations, sovereignty', '2025-02-25 08:25:17'),
(103, 3, '19(5)', 'Reasonable restrictions on freedom of movement and residence', 'Nothing in sub-clauses (d) and (e) of clause (1) shall affect the operation of any existing law, or prevent the State from making any law, imposing reasonable restrictions on the exercise of any of the rights conferred by the said sub-clauses either in the interests of the general public or for the protection of the interests of any Scheduled Tribe.', 'restrictions, movement, residence', '2025-02-25 08:25:17'),
(104, 3, '19(6)', 'Reasonable restrictions on freedom of profession', 'Nothing in sub-clause (g) of clause (1) shall affect the operation of any existing law, or prevent the State from making any law, imposing reasonable restrictions on the exercise of the right conferred by the said sub-clause in the interests of the general public, and, in particular, nothing in the said sub-clause shall affect the operation of any existing law in so far as it relates to, or prevent the State from making any law relating to the professional or technical qualifications necessary for practicing any profession or carrying on any occupation, trade or business.', 'restrictions, profession, qualifications', '2025-02-25 08:25:17'),
(105, 3, '20', 'Protection in respect of conviction for offences', 'No person shall be convicted of any offence except for violation of the law in force, nor subjected to a penalty greater than that prescribed.', 'conviction, ex post facto, double jeopardy', '2025-02-25 08:25:17'),
(106, 3, '20(1)', 'Ex post facto law', 'No person shall be convicted of any offence except for violation of a law in force at the time of the commission of the act charged as an offence, nor be subjected to a penalty greater than that which might have been inflicted under the law in force at the time of the commission of the offence.', 'ex post facto, conviction, penalty', '2025-02-25 08:25:17'),
(107, 3, '20(2)', 'Double jeopardy', 'No person shall be prosecuted and punished for the same offence more than once.', 'double jeopardy, prosecution, punishment', '2025-02-25 08:25:17'),
(108, 3, '20(3)', 'Self-incrimination', 'No person accused of any offence shall be compelled to be a witness against himself.', 'self-incrimination, witness, accused', '2025-02-25 08:25:17'),
(109, 3, '21', 'Protection of life and personal liberty', 'No person shall be deprived of his life or personal liberty except according to procedure established by law.', 'life, liberty, procedure established by law', '2025-02-25 08:25:17'),
(110, 3, '21A', 'Right to education', 'The State shall provide free and compulsory education to all children of the age of six to fourteen years.', 'education, free, compulsory, children', '2025-02-25 08:25:17'),
(111, 3, '22', 'Protection against arrest and detention in certain cases', 'No person shall be detained in custody without being informed of the grounds for arrest, denied the right to consult and defend by a legal practitioner.', 'arrest, detention, legal practitioner', '2025-02-25 08:25:17'),
(112, 3, '22(1)', 'Rights upon arrest', 'No person who is arrested shall be detained in custody without being informed, as soon as may be, of the grounds for such arrest nor shall he be denied the right to consult, and to be defended by, a legal practitioner of his choice.', 'arrest, grounds, legal practitioner', '2025-02-25 08:25:17'),
(113, 3, '22(2)', 'Production before magistrate', 'Every person who is arrested and detained in custody shall be produced before the nearest magistrate within a period of twenty-four hours of such arrest excluding the time necessary for the journey from the place of arrest to the court of the magistrate.', 'production, magistrate, twenty-four hours', '2025-02-25 08:25:17'),
(114, 3, '22(3)', 'Exception for enemy aliens and preventive detention', 'Nothing in clauses (1) and (2) shall apply to any person who for the time being is an enemy alien; or to any person who is arrested or detained under any law providing for preventive detention.', 'enemy alien, preventive detention, exception', '2025-02-25 08:25:17'),
(115, 3, '22(4)', 'Maximum period of preventive detention', 'No law providing for preventive detention shall authorise the detention of a person for a longer period than three months unless an Advisory Board has reported before the expiration of the said period of three months that there is sufficient cause for such detention.', 'preventive detention, advisory board, three months', '2025-02-25 08:25:17'),
(116, 3, '22(5)', 'Communication of grounds of detention', 'When any person is detained in pursuance of an order made under any law providing for preventive detention, the authority making the order shall, as soon as may be, communicate to such person the grounds on which the order has been made and shall afford him the earliest opportunity of making a representation against the order.', 'grounds, communication, representation', '2025-02-25 08:25:17'),
(117, 3, '22(6)', 'Preventive detention laws', 'Nothing in clause (5) shall require the authority making any such order as is referred to in that clause to disclose facts which such authority considers to be against the public interest to disclose.', 'preventive detention, disclosure, public interest', '2025-02-25 08:25:17'),
(118, 3, '22(7)', 'Parliamentary power to prescribe', 'Parliament may by law prescribe the circumstances under which, and the class or classes of cases in which, a person may be detained for a period longer than three months under any law providing for preventive detention without obtaining the opinion of an Advisory Board.', 'parliament, preventive detention, advisory board', '2025-02-25 08:25:17'),
(119, 3, '23', 'Prohibition of traffic in human beings and forced labour', 'Traffic in human beings and forced labour are prohibited.', 'human trafficking, forced labour, prohibition', '2025-02-25 08:25:17'),
(120, 3, '23(1)', 'Prohibition of traffic and forced labor', 'Traffic in human beings and begar and other similar forms of forced labour are prohibited and any contravention of this provision shall be an offence punishable in accordance with law.', 'traffic, begar, forced labor', '2025-02-25 08:25:17'),
(121, 3, '23(2)', 'Exception for public purposes', 'Nothing in this article shall prevent the State from imposing compulsory service for public purposes, and in imposing such service the State shall not make any discrimination on grounds only of religion, race, caste or class or any of them.', 'compulsory service, public purposes, discrimination', '2025-02-25 08:25:17'),
(122, 3, '24', 'Prohibition of employment of children in factories, etc.', 'No child below the age of fourteen years shall be employed to work in any factory or mine or engaged in any other hazardous employment.', 'child labour, factories, hazardous employment', '2025-02-25 08:25:17'),
(123, 3, '25', 'Freedom of conscience and free profession, practice and propagation of religion', 'All persons are equally entitled to freedom of conscience and the right to freely profess, practice, and propagate religion.', 'conscience, religion, freedom', '2025-02-25 08:25:17'),
(124, 3, '25(1)', 'Freedom of conscience and religion', 'Subject to public order, morality and health and to the other provisions of this Part, all persons are equally entitled to freedom of conscience and the right freely to profess, practise and propagate religion.', 'conscience, profess, practice', '2025-02-25 08:25:17'),
(125, 3, '25(2)(a)', 'Regulation of economic, financial, political activity', 'Nothing in this article shall affect the operation of any existing law or prevent the State from making any law regulating or restricting any economic, financial, political or other secular activity which may be associated with religious practice.', 'economic activity, regulation, secular', '2025-02-25 08:25:17'),
(126, 3, '25(2)(b)', 'Social welfare and reform', 'Nothing in this article shall affect the operation of any existing law or prevent the State from making any law providing for social welfare and reform or the throwing open of Hindu religious institutions of a public character to all classes and sections of Hindus.', 'social welfare, reform, Hindu institutions', '2025-02-25 08:25:17'),
(127, 3, '25(3)', 'Definition of Hindu', 'The reference to Hindus shall be construed as including a reference to persons professing the Sikh, Jaina or Buddhist religion, and the reference to Hindu religious institutions shall be construed accordingly.', 'Hindu, Sikh, Jaina, Buddhist', '2025-02-25 08:25:17'),
(128, 3, '26', 'Freedom to manage religious affairs', 'Freedom to manage religious affairs subject to public order, morality and health.', 'religious affairs, management, institutions', '2025-02-25 08:25:17'),
(129, 3, '26(a)', 'Establish and maintain institutions', 'Freedom to establish and maintain institutions for religious and charitable purposes.', 'religious institutions, establishment, maintenance', '2025-02-25 08:25:17'),
(130, 3, '26(b)', 'Manage own affairs in religion', 'Freedom to manage its own affairs in matters of religion.', 'religious affairs, management, religion', '2025-02-25 08:25:17'),
(131, 3, '26(c)', 'Own and acquire property', 'Freedom to own and acquire movable and immovable property.', 'property, acquisition, ownership', '2025-02-25 08:25:17'),
(132, 3, '26(d)', 'Administer property', 'Freedom to administer such property in accordance with law.', 'administration, property, law', '2025-02-25 08:25:17'),
(133, 3, '27', 'Freedom as to payment of taxes for promotion of any particular religion', 'No person shall be compelled to pay any taxes for the promotion or maintenance of any particular religion.', 'taxes, religion, promotion', '2025-02-25 08:25:17'),
(134, 3, '28', 'Freedom as to attendance at religious instruction or religious worship in certain educational institutions', 'No religious instruction shall be provided in educational institutions wholly maintained out of State funds.', 'religious instruction, educational institutions', '2025-02-25 08:25:17'),
(135, 3, '28(1)', 'No religious instruction in state-funded institutions', 'No religious instruction shall be provided in any educational institution wholly maintained out of State funds.', 'religious instruction, state funds, educational institution', '2025-02-25 08:25:17'),
(136, 3, '28(2)', 'Religious instruction in state-aided institutions', 'Nothing in clause (1) shall apply to an educational institution which is administered by the State but has been established under any endowment or trust which requires that religious instruction shall be imparted in such institution.', 'religious instruction, endowment, trust', '2025-02-25 08:25:17'),
(137, 3, '28(3)', 'No compulsion to attend religious instruction', 'No person attending any educational institution recognised by the State or receiving aid out of State funds shall be required to take part in any religious instruction that may be imparted in such institution or to attend any religious worship that may be conducted in such institution.', 'religious instruction, attendance, compulsion', '2025-02-25 08:25:17'),
(138, 3, '29', 'Protection of interests of minorities', 'Any section of citizens having a distinct language, script or culture of its own shall have the right to conserve the same.', 'minorities, culture, language, script', '2025-02-25 08:25:17'),
(139, 3, '29(1)', 'Right to conserve language, script, culture', 'Any section of the citizens residing in the territory of India or any part thereof having a distinct language, script or culture of its own shall have the right to conserve the same.', 'language, script, culture', '2025-02-25 08:25:17'),
(140, 3, '29(2)', 'Non-discrimination in state-aided institutions', 'No citizen shall be denied admission into any educational institution maintained by the State or receiving aid out of State funds on grounds only of religion, race, caste, language or any of them.', 'admission, educational institution, discrimination', '2025-02-25 08:25:17'),
(141, 3, '30', 'Right of minorities to establish and administer educational institutions', 'All minorities have the right to establish and administer educational institutions of their choice.', 'minorities, educational institutions', '2025-02-25 08:25:17'),
(142, 3, '30(1)', 'Right to establish educational institutions', 'All minorities, whether based on religion or language, shall have the right to establish and administer educational institutions of their choice.', 'minorities, educational institutions, establishment', '2025-02-25 08:25:17'),
(143, 3, '30(1A)', 'Property acquisition for educational institutions', 'In making any law providing for the compulsory acquisition of any property of an educational institution established and administered by a minority, the State shall ensure that the amount fixed by or determined under such law for the acquisition of such property is such as would not restrict or abrogate the right guaranteed under that clause.', 'acquisition, property, educational institutions', '2025-02-25 08:25:17'),
(144, 3, '30(2)', 'State aid to educational institutions', 'The State shall not, in granting aid to educational institutions, discriminate against any educational institution on the ground that it is under the management of a minority, whether based on religion or language.', 'state aid, discrimination, management', '2025-02-25 08:25:17'),
(145, 3, '31', 'Repealed by the Constitution (Forty-fourth Amendment) Act, 1978', 'This article was related to the right to property and has been repealed.', 'property, repealed, amendment', '2025-02-25 08:25:17'),
(146, 3, '31A', 'Saving of laws providing for acquisition of estates, etc.', 'Notwithstanding anything contained in article 13, no law providing for the acquisition by the State of any estate or of any rights therein or the extinguishment or modification of any such rights shall be deemed to be void on the ground that it is inconsistent with, or takes away or abridges any of the rights conferred by article 14 or article 19.', 'acquisition, estates, rights', '2025-02-25 08:25:17'),
(147, 3, '31B', 'Validation of certain Acts and Regulations', 'Without prejudice to the generality of the provisions contained in article 31A, none of the Acts and Regulations specified in the Ninth Schedule nor any of the provisions thereof shall be deemed to be void, or ever to have become void, on the ground that such Act, Regulation or provision is inconsistent with, or takes away or abridges any of the rights conferred by, any provisions of this Part, and notwithstanding any judgment, decree or order of any court or Tribunal to the contrary, each of the said Acts and Regulations shall, subject to the power of any competent Legislature to repeal or amend it, continue in force.', 'ninth schedule, validation, acts', '2025-02-25 08:25:17'),
(148, 3, '31C', 'Saving of laws giving effect to certain directive principles', 'Notwithstanding anything contained in article 13, no law giving effect to the policy of the State towards securing the principles specified in clause (b) or clause (c) of article 39 shall be deemed to be void on the ground that it is inconsistent with, or takes away or abridges any of the rights conferred by article 14 or article 19.', 'directive principles, saving, policy', '2025-02-25 08:25:17'),
(149, 3, '31D', 'Repealed by the Constitution (Forty-third Amendment) Act, 1977', 'This article was related to saving of laws in respect of anti-national activities and has been repealed.', 'anti-national activities, repealed, amendment', '2025-02-25 08:25:17'),
(150, 3, '32', 'Remedies for enforcement of rights conferred by this Part', 'The right to move the Supreme Court for the enforcement of fundamental rights.', 'supreme court, enforcement, writs', '2025-02-25 08:25:17'),
(151, 3, '32A', 'Repealed by the Constitution (Forty-third Amendment) Act, 1977', 'This article was related to constitutional validity of State laws not to be considered in proceedings under article 32 and has been repealed.', 'state laws, validity, repealed', '2025-02-25 08:25:17'),
(152, 3, '33', 'Power of Parliament to modify the rights conferred by this Part in their application to Forces, etc.', 'Parliament may restrict or abrogate the application of fundamental rights to the armed forces.', 'armed forces, restriction, parliament', '2025-02-25 08:25:17'),
(153, 3, '34', 'Restriction on rights conferred by this Part while martial law is in force in any area', 'Parliament may indemnify persons in service of the Union or a State for acts done during martial law.', 'martial law, indemnify, restrictions', '2025-02-25 08:25:17'),
(154, 3, '35', 'Legislation to give effect to the provisions of this Part', 'Parliament has exclusive power to make laws giving effect to the provisions of fundamental rights.', 'legislation, parliament, implementation', '2025-02-25 08:25:17'),
(155, 3, '35(a)', 'Parliaments exclusive power', 'Parliament shall have, and the Legislature of a State shall not have, power to make laws with respect to any of the matters which under clause (3) of article 16, clause (3) of article 32, article 33 and article 34 may be provided for by law made by Parliament.', 'parliament, exclusive, power', '2025-02-25 08:25:17'),
(156, 3, '35(b)', 'Laws made before constitution', 'Any law made by Parliament with respect to the enforcement of any such right conferred by this Part, in existence at the commencement of this Constitution shall continue in force until altered or repealed or amended by Parliament.', 'existing laws, continuance, alteration', '2025-02-25 08:25:17'),
(157, 4, '36', 'Definition', 'In this Part, unless the context otherwise requires, \"the State\" has the same meaning as in Part III.', 'definition, state, directive principles', '0000-00-00 00:00:00'),
(158, 4, '37', 'Application of the principles contained in this Part', 'The provisions contained in this Part shall not be enforceable by any court, but the principles therein laid down are nevertheless fundamental in the governance of the country and it shall be the duty of the State to apply these principles in making laws.', 'application, principles, non-enforceable, governance', '0000-00-00 00:00:00'),
(159, 4, '38', 'State to secure a social order for the promotion of welfare of the people', '(1) The State shall strive to promote the welfare of the people by securing and protecting as effectively as it may a social order in which justice, social, economic and political, shall inform all the institutions of the national life.\n(2) The State shall, in particular, strive to minimise the inequalities in income, and endeavour to eliminate inequalities in status, facilities and opportunities, not only amongst individuals but also amongst groups of people residing in different areas or engaged in different vocations.', 'social order, welfare, justice, inequality', '0000-00-00 00:00:00'),
(160, 4, '39', 'Certain principles of policy to be followed by the State', 'The State shall, in particular, direct its policy towards securing—\n(a) that the citizens, men and women equally, have the right to an adequate means of livelihood;\n(b) that the ownership and control of the material resources of the community are so distributed as best to subserve the common good;\n(c) that the operation of the economic system does not result in the concentration of wealth and means of production to the common detriment;\n(d) that there is equal pay for equal work for both men and women;\n(e) that the health and strength of workers, men and women, and the tender age of children are not abused and that citizens are not forced by economic necessity to enter avocations unsuited to their age or strength;\n(f) that children are given opportunities and facilities to develop in a healthy manner and in conditions of freedom and dignity and that childhood and youth are protected against exploitation and against moral and material abandonment.', 'policy principles, livelihood, resources, equal pay, child protection', '0000-00-00 00:00:00'),
(161, 4, '39A', 'Equal justice and free legal aid', 'The State shall secure that the operation of the legal system promotes justice, on a basis of equal opportunity, and shall, in particular, provide free legal aid, by suitable legislation or schemes or in any other way, to ensure that opportunities for securing justice are not denied to any citizen by reason of economic or other disabilities.', 'equal justice, legal aid, opportunity', '1976-12-02 18:30:00'),
(162, 4, '40', 'Organisation of village panchayats', 'The State shall take steps to organise village panchayats and endow them with such powers and authority as may be necessary to enable them to function as units of self-government.', 'village panchayats, self-government, rural', '0000-00-00 00:00:00'),
(163, 4, '41', 'Right to work, to education and to public assistance in certain cases', 'The State shall, within the limits of its economic capacity and development, make effective provision for securing the right to work, to education and to public assistance in cases of unemployment, old age, sickness and disablement, and in other cases of undeserved want.', 'right to work, education, public assistance, welfare', '0000-00-00 00:00:00'),
(164, 4, '42', 'Provision for just and humane conditions of work and maternity relief', 'The State shall make provision for securing just and humane conditions of work and for maternity relief.', 'work conditions, maternity relief, humane', '0000-00-00 00:00:00'),
(165, 4, '43', 'Living wage, etc., for workers', 'The State shall endeavour to secure, by suitable legislation or economic organisation or in any other way, to all workers, agricultural, industrial or otherwise, work, a living wage, conditions of work ensuring a decent standard of life and full enjoyment of leisure and social and cultural opportunities and, in particular, the State shall endeavour to promote cottage industries on an individual or co-operative basis in rural areas.', 'living wage, workers, decent life, cottage industries', '0000-00-00 00:00:00'),
(166, 4, '43A', 'Participation of workers in management of industries', 'The State shall take steps, by suitable legislation or in any other way, to secure the participation of workers in the management of undertakings, establishments or other organisations engaged in any industry.', 'workers participation, management, industry', '1976-12-02 18:30:00'),
(167, 4, '43B', 'Promotion of co-operative societies', 'The State shall endeavour to promote voluntary formation, autonomous functioning, democratic control and professional management of co-operative societies.', 'co-operative societies, voluntary, autonomous', '2011-01-11 18:30:00'),
(168, 4, '44', 'Uniform civil code for the citizens', 'The State shall endeavour to secure for the citizens a uniform civil code throughout the territory of India.', 'uniform civil code, personal law', '0000-00-00 00:00:00'),
(169, 4, '45', 'Provision for early childhood care and education to children below the age of six years', 'The State shall endeavour to provide early childhood care and education for all children until they complete the age of six years.', 'early childhood, care, education', '0000-00-00 00:00:00'),
(170, 4, '46', 'Promotion of educational and economic interests of Scheduled Castes, Scheduled Tribes and other weaker sections', 'The State shall promote with special care the educational and economic interests of the weaker sections of the people, and, in particular, of the Scheduled Castes and the Scheduled Tribes, and shall protect them from social injustice and all forms of exploitation.', 'scheduled castes, scheduled tribes, weaker sections, education', '0000-00-00 00:00:00'),
(171, 4, '47', 'Duty of the State to raise the level of nutrition and the standard of living and to improve public health', 'The State shall regard the raising of the level of nutrition and the standard of living of its people and the improvement of public health as among its primary duties and, in particular, the State shall endeavour to bring about prohibition of the consumption except for medicinal purposes of intoxicating drinks and of drugs which are injurious to health.', 'nutrition, standard of living, public health, prohibition', '0000-00-00 00:00:00');
INSERT INTO `constitution_articles` (`SNo`, `PartNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(172, 4, '48', 'Organisation of agriculture and animal husbandry', 'The State shall endeavour to organise agriculture and animal husbandry on modern and scientific lines and shall, in particular, take steps for preserving and improving the breeds, and prohibiting the slaughter, of cows and calves and other milch and draught cattle.', 'agriculture, animal husbandry, cow protection', '0000-00-00 00:00:00'),
(173, 4, '48A', 'Protection and improvement of environment and safeguarding of forests and wild life', 'The State shall endeavour to protect and improve the environment and to safeguard the forests and wild life of the country.', 'environment, forests, wildlife, protection', '1976-12-02 18:30:00'),
(174, 4, '49', 'Protection of monuments and places and objects of national importance', 'It shall be the obligation of the State to protect every monument or place or object of artistic or historic interest, declared by or under law made by Parliament to be of national importance, from spoliation, disfigurement, destruction, removal, disposal or export, as the case may be.', 'monuments, historic, protection, national importance', '0000-00-00 00:00:00'),
(175, 4, '50', 'Separation of judiciary from executive', 'The State shall take steps to separate the judiciary from the executive in the public services of the State.', 'judiciary, executive, separation, independence', '0000-00-00 00:00:00'),
(176, 4, '51', 'Promotion of international peace and security', 'The State shall endeavour to—\n(a) promote international peace and security;\n(b) maintain just and honourable relations between nations;\n(c) foster respect for international law and treaty obligations in the dealings of organised peoples with one another; and\n(d) encourage settlement of international disputes by arbitration.', 'international peace, security, relations, arbitration', '0000-00-00 00:00:00'),
(177, 4, '51A', 'Fundamental duties', 'It shall be the duty of every citizen of India—\n(a) to abide by the Constitution and respect its ideals and institutions, the National Flag and the National Anthem;\n(b) to cherish and follow the noble ideals which inspired our national struggle for freedom;\n(c) to uphold and protect the sovereignty, unity and integrity of India;\n(d) to defend the country and render national service when called upon to do so;\n(e) to promote harmony and the spirit of common brotherhood amongst all the people of India transcending religious, linguistic and regional or sectional diversities; to renounce practices derogatory to the dignity of women;\n(f) to value and preserve the rich heritage of our composite culture;\n(g) to protect and improve the natural environment including forests, lakes, rivers and wild life, and to have compassion for living creatures;\n(h) to develop the scientific temper, humanism and the spirit of inquiry and reform;\n(i) to safeguard public property and to abjure violence;\n(j) to strive towards excellence in all spheres of individual and collective activity so that the nation constantly rises to higher levels of endeavour and achievement;\n(k) who is a parent or guardian to provide opportunities for education to his child or, as the case may be, ward between the age of six and fourteen years.', 'fundamental duties, citizens, obligations, constitution', '1976-12-02 18:30:00'),
(178, 1, '1', 'Name and territory of the Union', 'India, that is Bharat, shall be a Union of States.', 'territory, union, states, name', '2025-02-25 08:27:33'),
(179, 1, '1(1)', 'Name of the Union', 'India, that is Bharat, shall be a Union of States.', 'name, india, bharat', '2025-02-25 08:27:33'),
(180, 1, '1(2)', 'States and territories of the Union', 'The States and the territories thereof shall be as specified in the First Schedule.', 'states, territories, first schedule', '2025-02-25 08:27:33'),
(181, 1, '1(3)', 'Territory of India', 'The territory of India shall comprise the territories of the States, the Union territories and such other territories as may be acquired.', 'territory, states, acquisition', '2025-02-25 08:27:33'),
(182, 1, '2', 'Admission or establishment of new States', 'Parliament may by law admit new States into the Union of India or establish new States.', 'new states, admission, parliament', '2025-02-25 08:27:33'),
(183, 1, '3', 'Formation of new States and alteration of areas, boundaries or names of existing States', 'Powers of Parliament to form new States and alter areas, boundaries or names of existing States.', 'boundaries, areas, states, alteration', '2025-02-25 08:27:33'),
(184, 1, '3(a)', 'Formation of new State', 'Form a new State by separation of territory from any State or by uniting two or more States or parts of States or by uniting any territory to a part of any State.', 'new state, separation, uniting', '2025-02-25 08:27:33'),
(185, 1, '3(b)', 'Increase area of State', 'Increase the area of any State.', 'increase, area, state', '2025-02-25 08:27:33'),
(186, 1, '3(c)', 'Diminish area of State', 'Diminish the area of any State.', 'diminish, area, state', '2025-02-25 08:27:33'),
(187, 1, '3(d)', 'Alter boundaries of State', 'Alter the boundaries of any State.', 'alter, boundaries, state', '2025-02-25 08:27:33'),
(188, 1, '3(e)', 'Alter name of State', 'Alter the name of any State.', 'alter, name, state', '2025-02-25 08:27:33'),
(189, 1, '4', 'Laws made under articles 2 and 3 to provide for the amendment of the First and the Fourth Schedules and supplemental, incidental and consequential matters', 'Laws made for admission or establishment of new States or alteration of boundaries.', 'amendment, schedules, supplemental', '2025-02-25 08:27:33'),
(190, 1, '4(1)', 'Amendment of First and Fourth Schedules', 'Any law referred to in article 2 or article 3 shall contain such provisions for the amendment of the First Schedule and the Fourth Schedule as may be necessary.', 'amendment, schedules, necessary', '2025-02-25 08:27:33'),
(191, 1, '4(2)', 'No amendment to be a constitutional amendment', 'No such law as aforesaid shall be deemed to be an amendment of this Constitution for the purposes of article 368.', 'amendment, constitution, article 368', '2025-02-25 08:27:33'),
(192, 2, '5', 'Citizenship at the commencement of the Constitution', 'Persons domiciled in India who were born in India or either of whose parents were born in India or who had been ordinarily resident in India for not less than 5 years are citizens of India.', 'citizenship, domiciled, commencement', '2025-02-25 08:27:33'),
(193, 2, '6', 'Rights of citizenship of certain persons who have migrated to India from Pakistan', 'Provisions for migrants from Pakistan to India before 19th July, 1948.', 'migration, pakistan, citizenship', '2025-02-25 08:27:33'),
(194, 2, '7', 'Rights of citizenship of certain migrants to Pakistan', 'Provisions for persons who migrated to Pakistan but returned to India on permits.', 'pakistan, migration, permits', '2025-02-25 08:27:33'),
(195, 2, '8', 'Rights of citizenship of certain persons of Indian origin residing outside India', 'Provisions for persons of Indian origin residing outside India.', 'non-resident, origin, citizenship', '2025-02-25 08:27:33'),
(196, 2, '9', 'Persons voluntarily acquiring citizenship of a foreign State not to be citizens', 'Any person who voluntarily acquires citizenship of a foreign state will not be a citizen of India.', 'foreign citizenship, voluntary acquisition', '2025-02-25 08:27:33'),
(197, 2, '10', 'Continuance of the rights of citizenship', 'Every person who is or is deemed to be a citizen of India shall continue to be such citizen, subject to the provisions of any law made by Parliament.', 'continuance, rights, citizenship', '2025-02-25 08:27:33'),
(198, 2, '11', 'Parliament to regulate the right of citizenship by law', 'Parliament to regulate the right of citizenship by law.', 'parliament, regulate, law, citizenship', '2025-02-25 08:27:33'),
(199, 3, '12', 'Definition of State', 'Definition of the State including the Government and Parliament of India, Government and Legislature of States, and local authorities.', 'definition, state, government', '2025-02-25 08:27:33'),
(200, 3, '13', 'Laws inconsistent with or in derogation of the fundamental rights', 'Laws inconsistent with fundamental rights are void to the extent of inconsistency.', 'inconsistent laws, void, fundamental rights', '2025-02-25 08:27:33'),
(201, 3, '13(1)', 'Laws in force before the constitution', 'All laws in force before the commencement of this Constitution, inconsistent with the provisions of this Part, shall, to the extent of such inconsistency, be void.', 'laws in force, void, inconsistency', '2025-02-25 08:27:33'),
(202, 3, '13(2)', 'Laws made after the constitution', 'The State shall not make any law which takes away or abridges the rights conferred by this Part and any law made in contravention of this clause shall, to the extent of the contravention, be void.', 'state, abridgement, void', '2025-02-25 08:27:33'),
(203, 3, '13(3)', 'Definition of law', 'In this article, \"law\" includes any Ordinance, order, bye-law, rule, regulation, notification, custom or usage having in the territory of India the force of law.', 'definition, law, ordinance', '2025-02-25 08:27:33'),
(204, 3, '13(4)', 'Article 368 amendment', 'Nothing in this article shall apply to any amendment of this Constitution made under article 368.', 'amendment, constitution, article 368', '2025-02-25 08:27:33'),
(205, 3, '14', 'Equality before law', 'The State shall not deny to any person equality before the law or the equal protection of the laws within the territory of India.', 'equality, law, protection', '2025-02-25 08:27:33'),
(206, 3, '15', 'Prohibition of discrimination on grounds of religion, race, caste, sex or place of birth', 'The State shall not discriminate against any citizen on grounds only of religion, race, caste, sex, place of birth or any of them.', 'discrimination, religion, race, caste, sex', '2025-02-25 08:27:33'),
(207, 3, '15(1)', 'State non-discrimination', 'The State shall not discriminate against any citizen on grounds only of religion, race, caste, sex, place of birth or any of them.', 'state, discrimination, grounds', '2025-02-25 08:27:33'),
(208, 3, '15(2)', 'Public places access', 'No citizen shall, on grounds only of religion, race, caste, sex, place of birth or any of them, be subject to any disability, liability, restriction or condition with regard to access to shops, public restaurants, etc.', 'public places, access, restriction', '2025-02-25 08:27:33'),
(209, 3, '15(3)', 'Special provisions for women and children', 'Nothing in this article shall prevent the State from making any special provision for women and children.', 'special provision, women, children', '2025-02-25 08:27:33'),
(210, 3, '15(4)', 'Special provisions for advancement of socially and educationally backward classes', 'Nothing in this article shall prevent the State from making any special provision for the advancement of any socially and educationally backward classes of citizens or for the Scheduled Castes and the Scheduled Tribes.', 'backward classes, advancement, special provision', '2025-02-25 08:27:33'),
(211, 3, '15(5)', 'Special provisions for admission to educational institutions', 'Nothing in this article or in clause (g) of clause (1) of article 19 shall prevent the State from making any special provision, by law, for the advancement of any socially and educationally backward classes of citizens or for the Scheduled Castes or the Scheduled Tribes in so far as such special provisions relate to their admission to educational institutions.', 'admission, educational institutions, backward classes', '2025-02-25 08:27:33'),
(212, 3, '15(6)', 'Special provisions for economically weaker sections', 'Nothing in this article or article 16 shall prevent the State from making any special provision for the advancement of any economically weaker sections of citizens.', 'economically weaker sections, advancement, special provision', '2025-02-25 08:27:33'),
(213, 3, '16', 'Equality of opportunity in matters of public employment', 'There shall be equality of opportunity for all citizens in matters relating to employment or appointment to any office under the State.', 'equality, opportunity, public employment', '2025-02-25 08:27:33'),
(214, 3, '16(1)', 'Equal opportunity in public employment', 'There shall be equality of opportunity for all citizens in matters relating to employment or appointment to any office under the State.', 'equality, opportunity, public employment', '2025-02-25 08:27:33'),
(215, 3, '16(2)', 'No discrimination in public employment', 'No citizen shall, on grounds only of religion, race, caste, sex, descent, place of birth, residence or any of them, be ineligible for, or discriminated against in respect of, any employment or office under the State.', 'discrimination, ineligibility, grounds', '2025-02-25 08:27:33'),
(216, 3, '16(3)', 'Parliament may prescribe residence requirement', 'Nothing in this article shall prevent Parliament from making any law prescribing, in regard to a class or classes of employment or appointment, a requirement as to residence within that State.', 'parliament, residence requirement, employment', '2025-02-25 08:27:33'),
(217, 3, '16(4)', 'Reservation for backward classes', 'Nothing in this article shall prevent the State from making any provision for the reservation of appointments or posts in favor of any backward class of citizens which is not adequately represented in the services under the State.', 'reservation, backward class, adequate representation', '2025-02-25 08:27:33'),
(218, 3, '16(4A)', 'Reservation in promotion', 'Nothing in this article shall prevent the State from making any provision for reservation in matters of promotion to any class or classes of posts in the services under the State in favor of the Scheduled Castes and the Scheduled Tribes.', 'reservation, promotion, scheduled castes', '2025-02-25 08:27:33'),
(219, 3, '16(4B)', 'Unfilled vacancies carried forward', 'Nothing in this article shall prevent the State from considering any unfilled vacancies of a year reserved for being filled up in that year in accordance with any provision for reservation made under clause (4) or clause (4A) as a separate class of vacancies to be filled up in any succeeding year or years.', 'unfilled vacancies, carried forward, separate class', '2025-02-25 08:27:33'),
(220, 3, '16(5)', 'Religious institutions employment', 'Nothing in this article shall affect the operation of any law which provides that the incumbent of an office in connection with the affairs of any religious or denominational institution or any member of the governing body thereof shall be a person professing a particular religion or belonging to a particular denomination.', 'religious institution, employment, denomination', '2025-02-25 08:27:33'),
(221, 3, '16(6)', 'Reservation for economically weaker sections', 'Nothing in this article shall prevent the State from making any provision for the reservation of appointments or posts in favor of any economically weaker sections of citizens.', 'reservation, economically weaker sections, appointments', '2025-02-25 08:27:33'),
(222, 3, '17', 'Abolition of Untouchability', 'Untouchability is abolished and its practice in any form is forbidden.', 'untouchability, abolition, forbidden', '2025-02-25 08:27:33'),
(223, 3, '18', 'Abolition of titles', 'No title shall be conferred by the State, and no citizen of India shall accept any title from any foreign State.', 'titles, abolition, foreign state', '2025-02-25 08:27:33'),
(224, 3, '18(1)', 'No titles by state', 'No title, not being a military or academic distinction, shall be conferred by the State.', 'titles, state, military or academic distinction', '2025-02-25 08:27:33'),
(225, 3, '18(2)', 'No titles by citizens from foreign state', 'No citizen of India shall accept any title from any foreign State.', 'titles, foreign state, citizens', '2025-02-25 08:27:33'),
(226, 3, '18(3)', 'No titles by non-citizens from foreign state', 'No person who is not a citizen of India shall, while he holds any office of profit or trust under the State, accept without the consent of the President any title from any foreign State.', 'titles, foreign state, non-citizens', '2025-02-25 08:27:33'),
(227, 3, '18(4)', 'No acceptance of gifts by officials without Presidents consent', 'No person holding any office of profit or trust under the State shall, without the consent of the President, accept any present, emolument, or office of any kind from or under any foreign State.', 'presents, foreign state, presidents consent', '2025-02-25 08:27:33'),
(228, 3, '19', 'Protection of certain rights regarding freedom of speech, etc.', 'All citizens shall have the right to freedom of speech and expression, peaceful assembly, form associations or unions, move freely throughout the territory of India, reside and settle in any part of India, and to practice any profession.', 'freedom of speech, assembly, association, movement', '2025-02-25 08:27:33'),
(229, 3, '19(1)(a)', 'Freedom of speech and expression', 'All citizens shall have the right to freedom of speech and expression.', 'speech, expression, freedom', '2025-02-25 08:27:33'),
(230, 3, '19(1)(b)', 'Freedom of peaceful assembly', 'All citizens shall have the right to assemble peaceably and without arms.', 'assembly, peaceful, without arms', '2025-02-25 08:27:33'),
(231, 3, '19(1)(c)', 'Freedom to form associations or unions', 'All citizens shall have the right to form associations or unions or co-operative societies.', 'associations, unions, co-operative societies', '2025-02-25 08:27:33'),
(232, 3, '19(1)(d)', 'Freedom of movement', 'All citizens shall have the right to move freely throughout the territory of India.', 'movement, territory, freely', '2025-02-25 08:27:33'),
(233, 3, '19(1)(e)', 'Freedom to reside and settle', 'All citizens shall have the right to reside and settle in any part of the territory of India.', 'reside, settle, territory', '2025-02-25 08:27:33'),
(234, 3, '19(1)(g)', 'Freedom to practice profession', 'All citizens shall have the right to practice any profession, or to carry on any occupation, trade or business.', 'profession, occupation, trade', '2025-02-25 08:27:33'),
(235, 3, '19(2)', 'Reasonable restrictions on freedom of speech', 'Nothing in sub-clause (a) of clause (1) shall affect the operation of any existing law, or prevent the State from making any law, imposing reasonable restrictions on the exercise of the right conferred by the said sub-clause in the interests of sovereignty and integrity of India, security of the State, friendly relations with foreign States, public order, decency or morality or in relation to contempt of court, defamation or incitement to an offence.', 'restrictions, speech, sovereignty', '2025-02-25 08:27:33'),
(236, 3, '19(3)', 'Reasonable restrictions on freedom of assembly', 'Nothing in sub-clause (b) of clause (1) shall affect the operation of any existing law, or prevent the State from making any law, imposing reasonable restrictions on the exercise of the right conferred by the said sub-clause in the interests of sovereignty and integrity of India or public order.', 'restrictions, assembly, sovereignty', '2025-02-25 08:27:33'),
(237, 3, '19(4)', 'Reasonable restrictions on freedom of associations', 'Nothing in sub-clause (c) of clause (1) shall affect the operation of any existing law, or prevent the State from making any law, imposing reasonable restrictions on the exercise of the right conferred by the said sub-clause in the interests of sovereignty and integrity of India or public order or morality.', 'restrictions, associations, sovereignty', '2025-02-25 08:27:33'),
(238, 3, '19(5)', 'Reasonable restrictions on freedom of movement and residence', 'Nothing in sub-clauses (d) and (e) of clause (1) shall affect the operation of any existing law, or prevent the State from making any law, imposing reasonable restrictions on the exercise of any of the rights conferred by the said sub-clauses either in the interests of the general public or for the protection of the interests of any Scheduled Tribe.', 'restrictions, movement, residence', '2025-02-25 08:27:33'),
(239, 3, '19(6)', 'Reasonable restrictions on freedom of profession', 'Nothing in sub-clause (g) of clause (1) shall affect the operation of any existing law, or prevent the State from making any law, imposing reasonable restrictions on the exercise of the right conferred by the said sub-clause in the interests of the general public, and, in particular, nothing in the said sub-clause shall affect the operation of any existing law in so far as it relates to, or prevent the State from making any law relating to the professional or technical qualifications necessary for practicing any profession or carrying on any occupation, trade or business.', 'restrictions, profession, qualifications', '2025-02-25 08:27:33'),
(240, 3, '20', 'Protection in respect of conviction for offences', 'No person shall be convicted of any offence except for violation of the law in force, nor subjected to a penalty greater than that prescribed.', 'conviction, ex post facto, double jeopardy', '2025-02-25 08:27:33'),
(241, 3, '20(1)', 'Ex post facto law', 'No person shall be convicted of any offence except for violation of a law in force at the time of the commission of the act charged as an offence, nor be subjected to a penalty greater than that which might have been inflicted under the law in force at the time of the commission of the offence.', 'ex post facto, conviction, penalty', '2025-02-25 08:27:33'),
(242, 3, '20(2)', 'Double jeopardy', 'No person shall be prosecuted and punished for the same offence more than once.', 'double jeopardy, prosecution, punishment', '2025-02-25 08:27:33'),
(243, 3, '20(3)', 'Self-incrimination', 'No person accused of any offence shall be compelled to be a witness against himself.', 'self-incrimination, witness, accused', '2025-02-25 08:27:33'),
(244, 3, '21', 'Protection of life and personal liberty', 'No person shall be deprived of his life or personal liberty except according to procedure established by law.', 'life, liberty, procedure established by law', '2025-02-25 08:27:33'),
(245, 3, '21A', 'Right to education', 'The State shall provide free and compulsory education to all children of the age of six to fourteen years.', 'education, free, compulsory, children', '2025-02-25 08:27:33'),
(246, 3, '22', 'Protection against arrest and detention in certain cases', 'No person shall be detained in custody without being informed of the grounds for arrest, denied the right to consult and defend by a legal practitioner.', 'arrest, detention, legal practitioner', '2025-02-25 08:27:33'),
(247, 3, '22(1)', 'Rights upon arrest', 'No person who is arrested shall be detained in custody without being informed, as soon as may be, of the grounds for such arrest nor shall he be denied the right to consult, and to be defended by, a legal practitioner of his choice.', 'arrest, grounds, legal practitioner', '2025-02-25 08:27:33'),
(248, 3, '22(2)', 'Production before magistrate', 'Every person who is arrested and detained in custody shall be produced before the nearest magistrate within a period of twenty-four hours of such arrest excluding the time necessary for the journey from the place of arrest to the court of the magistrate.', 'production, magistrate, twenty-four hours', '2025-02-25 08:27:33'),
(249, 3, '22(3)', 'Exception for enemy aliens and preventive detention', 'Nothing in clauses (1) and (2) shall apply to any person who for the time being is an enemy alien; or to any person who is arrested or detained under any law providing for preventive detention.', 'enemy alien, preventive detention, exception', '2025-02-25 08:27:33'),
(250, 3, '22(4)', 'Maximum period of preventive detention', 'No law providing for preventive detention shall authorise the detention of a person for a longer period than three months unless an Advisory Board has reported before the expiration of the said period of three months that there is sufficient cause for such detention.', 'preventive detention, advisory board, three months', '2025-02-25 08:27:33'),
(251, 3, '22(5)', 'Communication of grounds of detention', 'When any person is detained in pursuance of an order made under any law providing for preventive detention, the authority making the order shall, as soon as may be, communicate to such person the grounds on which the order has been made and shall afford him the earliest opportunity of making a representation against the order.', 'grounds, communication, representation', '2025-02-25 08:27:33'),
(252, 3, '22(6)', 'Preventive detention laws', 'Nothing in clause (5) shall require the authority making any such order as is referred to in that clause to disclose facts which such authority considers to be against the public interest to disclose.', 'preventive detention, disclosure, public interest', '2025-02-25 08:27:33'),
(253, 3, '22(7)', 'Parliamentary power to prescribe', 'Parliament may by law prescribe the circumstances under which, and the class or classes of cases in which, a person may be detained for a period longer than three months under any law providing for preventive detention without obtaining the opinion of an Advisory Board.', 'parliament, preventive detention, advisory board', '2025-02-25 08:27:33'),
(254, 3, '23', 'Prohibition of traffic in human beings and forced labour', 'Traffic in human beings and forced labour are prohibited.', 'human trafficking, forced labour, prohibition', '2025-02-25 08:27:33'),
(255, 3, '23(1)', 'Prohibition of traffic and forced labor', 'Traffic in human beings and begar and other similar forms of forced labour are prohibited and any contravention of this provision shall be an offence punishable in accordance with law.', 'traffic, begar, forced labor', '2025-02-25 08:27:33'),
(256, 3, '23(2)', 'Exception for public purposes', 'Nothing in this article shall prevent the State from imposing compulsory service for public purposes, and in imposing such service the State shall not make any discrimination on grounds only of religion, race, caste or class or any of them.', 'compulsory service, public purposes, discrimination', '2025-02-25 08:27:33'),
(257, 3, '24', 'Prohibition of employment of children in factories, etc.', 'No child below the age of fourteen years shall be employed to work in any factory or mine or engaged in any other hazardous employment.', 'child labour, factories, hazardous employment', '2025-02-25 08:27:33'),
(258, 3, '25', 'Freedom of conscience and free profession, practice and propagation of religion', 'All persons are equally entitled to freedom of conscience and the right to freely profess, practice, and propagate religion.', 'conscience, religion, freedom', '2025-02-25 08:27:33'),
(259, 3, '25(1)', 'Freedom of conscience and religion', 'Subject to public order, morality and health and to the other provisions of this Part, all persons are equally entitled to freedom of conscience and the right freely to profess, practise and propagate religion.', 'conscience, profess, practice', '2025-02-25 08:27:33'),
(260, 3, '25(2)(a)', 'Regulation of economic, financial, political activity', 'Nothing in this article shall affect the operation of any existing law or prevent the State from making any law regulating or restricting any economic, financial, political or other secular activity which may be associated with religious practice.', 'economic activity, regulation, secular', '2025-02-25 08:27:33'),
(261, 3, '25(2)(b)', 'Social welfare and reform', 'Nothing in this article shall affect the operation of any existing law or prevent the State from making any law providing for social welfare and reform or the throwing open of Hindu religious institutions of a public character to all classes and sections of Hindus.', 'social welfare, reform, Hindu institutions', '2025-02-25 08:27:33'),
(262, 3, '25(3)', 'Definition of Hindu', 'The reference to Hindus shall be construed as including a reference to persons professing the Sikh, Jaina or Buddhist religion, and the reference to Hindu religious institutions shall be construed accordingly.', 'Hindu, Sikh, Jaina, Buddhist', '2025-02-25 08:27:33'),
(263, 3, '26', 'Freedom to manage religious affairs', 'Freedom to manage religious affairs subject to public order, morality and health.', 'religious affairs, management, institutions', '2025-02-25 08:27:33'),
(264, 3, '26(a)', 'Establish and maintain institutions', 'Freedom to establish and maintain institutions for religious and charitable purposes.', 'religious institutions, establishment, maintenance', '2025-02-25 08:27:33'),
(265, 3, '26(b)', 'Manage own affairs in religion', 'Freedom to manage its own affairs in matters of religion.', 'religious affairs, management, religion', '2025-02-25 08:27:33'),
(266, 3, '26(c)', 'Own and acquire property', 'Freedom to own and acquire movable and immovable property.', 'property, acquisition, ownership', '2025-02-25 08:27:33'),
(267, 3, '26(d)', 'Administer property', 'Freedom to administer such property in accordance with law.', 'administration, property, law', '2025-02-25 08:27:33'),
(268, 3, '27', 'Freedom as to payment of taxes for promotion of any particular religion', 'No person shall be compelled to pay any taxes for the promotion or maintenance of any particular religion.', 'taxes, religion, promotion', '2025-02-25 08:27:33'),
(269, 3, '28', 'Freedom as to attendance at religious instruction or religious worship in certain educational institutions', 'No religious instruction shall be provided in educational institutions wholly maintained out of State funds.', 'religious instruction, educational institutions', '2025-02-25 08:27:33'),
(270, 3, '28(1)', 'No religious instruction in state-funded institutions', 'No religious instruction shall be provided in any educational institution wholly maintained out of State funds.', 'religious instruction, state funds, educational institution', '2025-02-25 08:27:33'),
(271, 3, '28(2)', 'Religious instruction in state-aided institutions', 'Nothing in clause (1) shall apply to an educational institution which is administered by the State but has been established under any endowment or trust which requires that religious instruction shall be imparted in such institution.', 'religious instruction, endowment, trust', '2025-02-25 08:27:33'),
(272, 3, '28(3)', 'No compulsion to attend religious instruction', 'No person attending any educational institution recognised by the State or receiving aid out of State funds shall be required to take part in any religious instruction that may be imparted in such institution or to attend any religious worship that may be conducted in such institution.', 'religious instruction, attendance, compulsion', '2025-02-25 08:27:33'),
(273, 3, '29', 'Protection of interests of minorities', 'Any section of citizens having a distinct language, script or culture of its own shall have the right to conserve the same.', 'minorities, culture, language, script', '2025-02-25 08:27:33'),
(274, 3, '29(1)', 'Right to conserve language, script, culture', 'Any section of the citizens residing in the territory of India or any part thereof having a distinct language, script or culture of its own shall have the right to conserve the same.', 'language, script, culture', '2025-02-25 08:27:33'),
(275, 3, '29(2)', 'Non-discrimination in state-aided institutions', 'No citizen shall be denied admission into any educational institution maintained by the State or receiving aid out of State funds on grounds only of religion, race, caste, language or any of them.', 'admission, educational institution, discrimination', '2025-02-25 08:27:33'),
(276, 3, '30', 'Right of minorities to establish and administer educational institutions', 'All minorities have the right to establish and administer educational institutions of their choice.', 'minorities, educational institutions', '2025-02-25 08:27:33'),
(277, 3, '30(1)', 'Right to establish educational institutions', 'All minorities, whether based on religion or language, shall have the right to establish and administer educational institutions of their choice.', 'minorities, educational institutions, establishment', '2025-02-25 08:27:33'),
(278, 3, '30(1A)', 'Property acquisition for educational institutions', 'In making any law providing for the compulsory acquisition of any property of an educational institution established and administered by a minority, the State shall ensure that the amount fixed by or determined under such law for the acquisition of such property is such as would not restrict or abrogate the right guaranteed under that clause.', 'acquisition, property, educational institutions', '2025-02-25 08:27:33'),
(279, 3, '30(2)', 'State aid to educational institutions', 'The State shall not, in granting aid to educational institutions, discriminate against any educational institution on the ground that it is under the management of a minority, whether based on religion or language.', 'state aid, discrimination, management', '2025-02-25 08:27:33'),
(280, 3, '31', 'Repealed by the Constitution (Forty-fourth Amendment) Act, 1978', 'This article was related to the right to property and has been repealed.', 'property, repealed, amendment', '2025-02-25 08:27:33'),
(281, 3, '31A', 'Saving of laws providing for acquisition of estates, etc.', 'Notwithstanding anything contained in article 13, no law providing for the acquisition by the State of any estate or of any rights therein or the extinguishment or modification of any such rights shall be deemed to be void on the ground that it is inconsistent with, or takes away or abridges any of the rights conferred by article 14 or article 19.', 'acquisition, estates, rights', '2025-02-25 08:27:33'),
(282, 3, '31B', 'Validation of certain Acts and Regulations', 'Without prejudice to the generality of the provisions contained in article 31A, none of the Acts and Regulations specified in the Ninth Schedule nor any of the provisions thereof shall be deemed to be void, or ever to have become void, on the ground that such Act, Regulation or provision is inconsistent with, or takes away or abridges any of the rights conferred by, any provisions of this Part, and notwithstanding any judgment, decree or order of any court or Tribunal to the contrary, each of the said Acts and Regulations shall, subject to the power of any competent Legislature to repeal or amend it, continue in force.', 'ninth schedule, validation, acts', '2025-02-25 08:27:33'),
(283, 3, '31C', 'Saving of laws giving effect to certain directive principles', 'Notwithstanding anything contained in article 13, no law giving effect to the policy of the State towards securing the principles specified in clause (b) or clause (c) of article 39 shall be deemed to be void on the ground that it is inconsistent with, or takes away or abridges any of the rights conferred by article 14 or article 19.', 'directive principles, saving, policy', '2025-02-25 08:27:33'),
(284, 3, '31D', 'Repealed by the Constitution (Forty-third Amendment) Act, 1977', 'This article was related to saving of laws in respect of anti-national activities and has been repealed.', 'anti-national activities, repealed, amendment', '2025-02-25 08:27:33'),
(285, 3, '32', 'Remedies for enforcement of rights conferred by this Part', 'The right to move the Supreme Court for the enforcement of fundamental rights.', 'supreme court, enforcement, writs', '2025-02-25 08:27:33'),
(286, 3, '32A', 'Repealed by the Constitution (Forty-third Amendment) Act, 1977', 'This article was related to constitutional validity of State laws not to be considered in proceedings under article 32 and has been repealed.', 'state laws, validity, repealed', '2025-02-25 08:27:33'),
(287, 3, '33', 'Power of Parliament to modify the rights conferred by this Part in their application to Forces, etc.', 'Parliament may restrict or abrogate the application of fundamental rights to the armed forces.', 'armed forces, restriction, parliament', '2025-02-25 08:27:33'),
(288, 3, '34', 'Restriction on rights conferred by this Part while martial law is in force in any area', 'Parliament may indemnify persons in service of the Union or a State for acts done during martial law.', 'martial law, indemnify, restrictions', '2025-02-25 08:27:33'),
(289, 3, '35', 'Legislation to give effect to the provisions of this Part', 'Parliament has exclusive power to make laws giving effect to the provisions of fundamental rights.', 'legislation, parliament, implementation', '2025-02-25 08:27:33'),
(290, 3, '35(a)', 'Parliaments exclusive power', 'Parliament shall have, and the Legislature of a State shall not have, power to make laws with respect to any of the matters which under clause (3) of article 16, clause (3) of article 32, article 33 and article 34 may be provided for by law made by Parliament.', 'parliament, exclusive, power', '2025-02-25 08:27:33'),
(291, 3, '35(b)', 'Laws made before constitution', 'Any law made by Parliament with respect to the enforcement of any such right conferred by this Part, in existence at the commencement of this Constitution shall continue in force until altered or repealed or amended by Parliament.', 'existing laws, continuance, alteration', '2025-02-25 08:27:33'),
(292, 4, '36', 'Definition', 'In this Part, unless the context otherwise requires, \"the State\" has the same meaning as in Part III.', 'definition, state, directive principles', '0000-00-00 00:00:00'),
(293, 4, '37', 'Application of the principles contained in this Part', 'The provisions contained in this Part shall not be enforceable by any court, but the principles therein laid down are nevertheless fundamental in the governance of the country and it shall be the duty of the State to apply these principles in making laws.', 'application, principles, non-enforceable, governance', '0000-00-00 00:00:00'),
(294, 4, '38', 'State to secure a social order for the promotion of welfare of the people', '(1) The State shall strive to promote the welfare of the people by securing and protecting as effectively as it may a social order in which justice, social, economic and political, shall inform all the institutions of the national life.\n(2) The State shall, in particular, strive to minimise the inequalities in income, and endeavour to eliminate inequalities in status, facilities and opportunities, not only amongst individuals but also amongst groups of people residing in different areas or engaged in different vocations.', 'social order, welfare, justice, inequality', '0000-00-00 00:00:00'),
(295, 4, '39', 'Certain principles of policy to be followed by the State', 'The State shall, in particular, direct its policy towards securing—\n(a) that the citizens, men and women equally, have the right to an adequate means of livelihood;\n(b) that the ownership and control of the material resources of the community are so distributed as best to subserve the common good;\n(c) that the operation of the economic system does not result in the concentration of wealth and means of production to the common detriment;\n(d) that there is equal pay for equal work for both men and women;\n(e) that the health and strength of workers, men and women, and the tender age of children are not abused and that citizens are not forced by economic necessity to enter avocations unsuited to their age or strength;\n(f) that children are given opportunities and facilities to develop in a healthy manner and in conditions of freedom and dignity and that childhood and youth are protected against exploitation and against moral and material abandonment.', 'policy principles, livelihood, resources, equal pay, child protection', '0000-00-00 00:00:00'),
(296, 4, '39A', 'Equal justice and free legal aid', 'The State shall secure that the operation of the legal system promotes justice, on a basis of equal opportunity, and shall, in particular, provide free legal aid, by suitable legislation or schemes or in any other way, to ensure that opportunities for securing justice are not denied to any citizen by reason of economic or other disabilities.', 'equal justice, legal aid, opportunity', '1976-12-02 18:30:00'),
(297, 4, '40', 'Organisation of village panchayats', 'The State shall take steps to organise village panchayats and endow them with such powers and authority as may be necessary to enable them to function as units of self-government.', 'village panchayats, self-government, rural', '0000-00-00 00:00:00'),
(298, 4, '41', 'Right to work, to education and to public assistance in certain cases', 'The State shall, within the limits of its economic capacity and development, make effective provision for securing the right to work, to education and to public assistance in cases of unemployment, old age, sickness and disablement, and in other cases of undeserved want.', 'right to work, education, public assistance, welfare', '0000-00-00 00:00:00'),
(299, 4, '42', 'Provision for just and humane conditions of work and maternity relief', 'The State shall make provision for securing just and humane conditions of work and for maternity relief.', 'work conditions, maternity relief, humane', '0000-00-00 00:00:00'),
(300, 4, '43', 'Living wage, etc., for workers', 'The State shall endeavour to secure, by suitable legislation or economic organisation or in any other way, to all workers, agricultural, industrial or otherwise, work, a living wage, conditions of work ensuring a decent standard of life and full enjoyment of leisure and social and cultural opportunities and, in particular, the State shall endeavour to promote cottage industries on an individual or co-operative basis in rural areas.', 'living wage, workers, decent life, cottage industries', '0000-00-00 00:00:00'),
(301, 4, '43A', 'Participation of workers in management of industries', 'The State shall take steps, by suitable legislation or in any other way, to secure the participation of workers in the management of undertakings, establishments or other organisations engaged in any industry.', 'workers participation, management, industry', '1976-12-02 18:30:00'),
(302, 4, '43B', 'Promotion of co-operative societies', 'The State shall endeavour to promote voluntary formation, autonomous functioning, democratic control and professional management of co-operative societies.', 'co-operative societies, voluntary, autonomous', '2011-01-11 18:30:00'),
(303, 4, '44', 'Uniform civil code for the citizens', 'The State shall endeavour to secure for the citizens a uniform civil code throughout the territory of India.', 'uniform civil code, personal law', '0000-00-00 00:00:00'),
(304, 4, '45', 'Provision for early childhood care and education to children below the age of six years', 'The State shall endeavour to provide early childhood care and education for all children until they complete the age of six years.', 'early childhood, care, education', '0000-00-00 00:00:00'),
(305, 4, '46', 'Promotion of educational and economic interests of Scheduled Castes, Scheduled Tribes and other weaker sections', 'The State shall promote with special care the educational and economic interests of the weaker sections of the people, and, in particular, of the Scheduled Castes and the Scheduled Tribes, and shall protect them from social injustice and all forms of exploitation.', 'scheduled castes, scheduled tribes, weaker sections, education', '0000-00-00 00:00:00'),
(306, 4, '47', 'Duty of the State to raise the level of nutrition and the standard of living and to improve public health', 'The State shall regard the raising of the level of nutrition and the standard of living of its people and the improvement of public health as among its primary duties and, in particular, the State shall endeavour to bring about prohibition of the consumption except for medicinal purposes of intoxicating drinks and of drugs which are injurious to health.', 'nutrition, standard of living, public health, prohibition', '0000-00-00 00:00:00'),
(307, 4, '48', 'Organisation of agriculture and animal husbandry', 'The State shall endeavour to organise agriculture and animal husbandry on modern and scientific lines and shall, in particular, take steps for preserving and improving the breeds, and prohibiting the slaughter, of cows and calves and other milch and draught cattle.', 'agriculture, animal husbandry, cow protection', '0000-00-00 00:00:00'),
(308, 4, '48A', 'Protection and improvement of environment and safeguarding of forests and wild life', 'The State shall endeavour to protect and improve the environment and to safeguard the forests and wild life of the country.', 'environment, forests, wildlife, protection', '1976-12-02 18:30:00'),
(309, 4, '49', 'Protection of monuments and places and objects of national importance', 'It shall be the obligation of the State to protect every monument or place or object of artistic or historic interest, declared by or under law made by Parliament to be of national importance, from spoliation, disfigurement, destruction, removal, disposal or export, as the case may be.', 'monuments, historic, protection, national importance', '0000-00-00 00:00:00'),
(310, 4, '50', 'Separation of judiciary from executive', 'The State shall take steps to separate the judiciary from the executive in the public services of the State.', 'judiciary, executive, separation, independence', '0000-00-00 00:00:00'),
(311, 4, '51', 'Promotion of international peace and security', 'The State shall endeavour to—\n(a) promote international peace and security;\n(b) maintain just and honourable relations between nations;\n(c) foster respect for international law and treaty obligations in the dealings of organised peoples with one another; and\n(d) encourage settlement of international disputes by arbitration.', 'international peace, security, relations, arbitration', '0000-00-00 00:00:00'),
(312, 4, '51A', 'Fundamental duties', 'It shall be the duty of every citizen of India—\n(a) to abide by the Constitution and respect its ideals and institutions, the National Flag and the National Anthem;\n(b) to cherish and follow the noble ideals which inspired our national struggle for freedom;\n(c) to uphold and protect the sovereignty, unity and integrity of India;\n(d) to defend the country and render national service when called upon to do so;\n(e) to promote harmony and the spirit of common brotherhood amongst all the people of India transcending religious, linguistic and regional or sectional diversities; to renounce practices derogatory to the dignity of women;\n(f) to value and preserve the rich heritage of our composite culture;\n(g) to protect and improve the natural environment including forests, lakes, rivers and wild life, and to have compassion for living creatures;\n(h) to develop the scientific temper, humanism and the spirit of inquiry and reform;\n(i) to safeguard public property and to abjure violence;\n(j) to strive towards excellence in all spheres of individual and collective activity so that the nation constantly rises to higher levels of endeavour and achievement;\n(k) who is a parent or guardian to provide opportunities for education to his child or, as the case may be, ward between the age of six and fourteen years.', 'fundamental duties, citizens, obligations, constitution', '1976-12-02 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `constitution_part1`
--

CREATE TABLE `constitution_part1` (
  `SNo` int(11) NOT NULL,
  `ArticleNo` varchar(20) NOT NULL,
  `ArticleDefinition` varchar(255) NOT NULL,
  `ArticleDescription` text DEFAULT NULL,
  `Keywords` varchar(255) DEFAULT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constitution_part1`
--

INSERT INTO `constitution_part1` (`SNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, '1', 'Name and territory of the Union', 'India, that is Bharat, shall be a Union of States.', 'territory, union, states, name', '2025-02-25 09:06:05'),
(2, '1(1)', 'Name of the Union', 'India, that is Bharat, shall be a Union of States.', 'name, india, bharat', '2025-02-25 09:06:05'),
(3, '1(2)', 'States and territories of the Union', 'The States and the territories thereof shall be as specified in the First Schedule.', 'states, territories, first schedule', '2025-02-25 09:06:05'),
(4, '1(3)', 'Territory of India', 'The territory of India shall comprise the territories of the States, the Union territories and such other territories as may be acquired.', 'territory, states, acquisition', '2025-02-25 09:06:05'),
(5, '2', 'Admission or establishment of new States', 'Parliament may by law admit new States into the Union of India or establish new States.', 'new states, admission, parliament', '2025-02-25 09:06:05'),
(6, '3', 'Formation of new States and alteration of areas, boundaries or names of existing States', 'Powers of Parliament to form new States and alter areas, boundaries or names of existing States.', 'boundaries, areas, states, alteration', '2025-02-25 09:06:05'),
(7, '3(a)', 'Formation of new State', 'Form a new State by separation of territory from any State or by uniting two or more States or parts of States or by uniting any territory to a part of any State.', 'new state, separation, uniting', '2025-02-25 09:06:05'),
(8, '3(b)', 'Increase area of State', 'Increase the area of any State.', 'increase, area, state', '2025-02-25 09:06:05'),
(9, '3(c)', 'Diminish area of State', 'Diminish the area of any State.', 'diminish, area, state', '2025-02-25 09:06:05'),
(10, '3(d)', 'Alter boundaries of State', 'Alter the boundaries of any State.', 'alter, boundaries, state', '2025-02-25 09:06:05'),
(11, '3(e)', 'Alter name of State', 'Alter the name of any State.', 'alter, name, state', '2025-02-25 09:06:05'),
(12, '4', 'Laws made under articles 2 and 3 to provide for the amendment of the First and the Fourth Schedules and supplemental, incidental and consequential matters', 'Laws made for admission or establishment of new States or alteration of boundaries.', 'amendment, schedules, supplemental', '2025-02-25 09:06:05'),
(13, '4(1)', 'Amendment of First and Fourth Schedules', 'Any law referred to in article 2 or article 3 shall contain such provisions for the amendment of the First Schedule and the Fourth Schedule as may be necessary.', 'amendment, schedules, necessary', '2025-02-25 09:06:05'),
(14, '4(2)', 'No amendment to be a constitutional amendment', 'No such law as aforesaid shall be deemed to be an amendment of this Constitution for the purposes of article 368.', 'amendment, constitution, article 368', '2025-02-25 09:06:05'),
(15, '1', 'Name and territory of the Union', 'India, that is Bharat, shall be a Union of States.', 'territory, union, states, name', '2025-02-25 09:08:52'),
(16, '1(1)', 'Name of the Union', 'India, that is Bharat, shall be a Union of States.', 'name, india, bharat', '2025-02-25 09:08:52'),
(17, '1(2)', 'States and territories of the Union', 'The States and the territories thereof shall be as specified in the First Schedule.', 'states, territories, first schedule', '2025-02-25 09:08:52'),
(18, '1(3)', 'Territory of India', 'The territory of India shall comprise the territories of the States, the Union territories and such other territories as may be acquired.', 'territory, states, acquisition', '2025-02-25 09:08:52'),
(19, '2', 'Admission or establishment of new States', 'Parliament may by law admit new States into the Union of India or establish new States.', 'new states, admission, parliament', '2025-02-25 09:08:52'),
(20, '3', 'Formation of new States and alteration of areas, boundaries or names of existing States', 'Powers of Parliament to form new States and alter areas, boundaries or names of existing States.', 'boundaries, areas, states, alteration', '2025-02-25 09:08:52'),
(21, '3(a)', 'Formation of new State', 'Form a new State by separation of territory from any State or by uniting two or more States or parts of States or by uniting any territory to a part of any State.', 'new state, separation, uniting', '2025-02-25 09:08:52'),
(22, '3(b)', 'Increase area of State', 'Increase the area of any State.', 'increase, area, state', '2025-02-25 09:08:52'),
(23, '3(c)', 'Diminish area of State', 'Diminish the area of any State.', 'diminish, area, state', '2025-02-25 09:08:52'),
(24, '3(d)', 'Alter boundaries of State', 'Alter the boundaries of any State.', 'alter, boundaries, state', '2025-02-25 09:08:52'),
(25, '3(e)', 'Alter name of State', 'Alter the name of any State.', 'alter, name, state', '2025-02-25 09:08:52'),
(26, '4', 'Laws made under articles 2 and 3 to provide for the amendment of the First and the Fourth Schedules and supplemental, incidental and consequential matters', 'Laws made for admission or establishment of new States or alteration of boundaries.', 'amendment, schedules, supplemental', '2025-02-25 09:08:52'),
(27, '4(1)', 'Amendment of First and Fourth Schedules', 'Any law referred to in article 2 or article 3 shall contain such provisions for the amendment of the First Schedule and the Fourth Schedule as may be necessary.', 'amendment, schedules, necessary', '2025-02-25 09:08:52'),
(28, '4(2)', 'No amendment to be a constitutional amendment', 'No such law as aforesaid shall be deemed to be an amendment of this Constitution for the purposes of article 368.', 'amendment, constitution, article 368', '2025-02-25 09:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `constitution_part2`
--

CREATE TABLE `constitution_part2` (
  `SNo` int(11) NOT NULL,
  `ArticleNo` varchar(10) DEFAULT NULL,
  `ArticleDefinition` varchar(200) DEFAULT NULL,
  `ArticleDescription` text DEFAULT NULL,
  `Keywords` varchar(255) DEFAULT NULL,
  `DateAdded` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constitution_part2`
--

INSERT INTO `constitution_part2` (`SNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, '5', 'Citizenship at the commencement of the Constitution', 'At the commencement of this Constitution, every person who:\n(a) has his domicile in India and\n    (i) was born in India; or\n    (ii) either of whose parents was born in India; or\n    (iii) has been ordinarily resident in India for not less than five years\n(b) who has migrated to India from Pakistan and\n    (i) if before July 19, 1948, has been registered as citizen\n    (ii) if after July 19, 1948, has been registered for 6 months and resident for 1 year before registration\n(c) who has migrated to Pakistan but returned on permit for resettlement\n(d) whose parents or grandparents were born in India but residing outside India shall be a citizen of India', 'Citizenship, Domicile, Migration, Birth, Registration', '1950-01-26'),
(2, '6', 'Rights of citizenship of certain persons who have migrated to Pakistan', 'Notwithstanding anything in Article 5, a person who has migrated to Pakistan after March 1, 1947, shall not be deemed to be a citizen of India:\nProvided that if any person returns to India under a permit for resettlement or permanent return, they shall be deemed to be a citizen of India from the date of their return.', 'Migration, Pakistan, Resettlement, Permit, Return', '1950-01-26'),
(3, '7', 'Rights of citizenship of certain migrants to Pakistan', 'Notwithstanding anything in Articles 5 and 6, a person who after March 1, 1947, migrated to Pakistan from India and later returned to India under a permit for resettlement shall not be deemed a citizen unless registered in accordance with rules made by the Central Government.', 'Migration, Pakistan, Return, Registration, Resettlement', '1950-01-26'),
(4, '8', 'Rights of citizenship of certain persons of Indian origin residing outside India', 'Any person who or either of whose parents or grandparents was born in undivided India, and who is residing outside India, shall be deemed to be a citizen of India if registered by the diplomatic or consular representative of India in that country.', 'Overseas Indians, Registration, Diplomatic, Consular, Origin', '1950-01-26'),
(5, '9', 'Persons voluntarily acquiring citizenship of a foreign State not to be citizens', 'No person shall be a citizen of India by virtue of Article 5, or be deemed to be a citizen of India by virtue of Article 6 or Article 8, if they have voluntarily acquired the citizenship of any foreign State.', 'Foreign Citizenship, Voluntary Acquisition, Citizenship Termination', '1950-01-26'),
(6, '10', 'Continuance of the rights of citizenship', 'Every person who is or is deemed to be a citizen of India under any of the foregoing provisions of this Part shall, subject to the provisions of any law that may be made by Parliament, continue to be such citizen.', 'Citizenship Continuance, Parliamentary Law, Rights', '1950-01-26'),
(7, '11', 'Parliament to regulate the right of citizenship by law', 'Nothing in the foregoing provisions of this Part shall derogate from the power of Parliament to make any provision with respect to the acquisition and termination of citizenship and all other matters relating to citizenship.', 'Parliamentary Powers, Citizenship Laws, Regulation', '1950-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `constitution_part3`
--

CREATE TABLE `constitution_part3` (
  `SNo` int(11) NOT NULL,
  `ArticleNo` varchar(20) NOT NULL,
  `ArticleDefinition` varchar(255) NOT NULL,
  `ArticleDescription` text DEFAULT NULL,
  `Keywords` varchar(255) DEFAULT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constitution_part3`
--

INSERT INTO `constitution_part3` (`SNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, '12', 'Definition of State', 'Definition of the State including the Government and Parliament of India, Government and Legislature of States, and local authorities.', 'definition, state, government', '2025-02-25 09:17:02'),
(2, '13', 'Laws inconsistent with or in derogation of the fundamental rights', 'Laws inconsistent with fundamental rights are void to the extent of inconsistency.', 'inconsistent laws, void, fundamental rights', '2025-02-25 09:17:02'),
(3, '13(1)', 'Laws in force before the constitution', 'All laws in force before the commencement of this Constitution, inconsistent with the provisions of this Part, shall, to the extent of such inconsistency, be void.', 'laws in force, void, inconsistency', '2025-02-25 09:17:02'),
(4, '13(2)', 'Laws made after the constitution', 'The State shall not make any law which takes away or abridges the rights conferred by this Part and any law made in contravention of this clause shall, to the extent of the contravention, be void.', 'state, abridgement, void', '2025-02-25 09:17:02'),
(5, '13(3)', 'Definition of law', 'In this article, \"law\" includes any Ordinance, order, bye-law, rule, regulation, notification, custom or usage having in the territory of India the force of law.', 'definition, law, ordinance', '2025-02-25 09:17:02'),
(6, '13(4)', 'Article 368 amendment', 'Nothing in this article shall apply to any amendment of this Constitution made under article 368.', 'amendment, constitution, article 368', '2025-02-25 09:17:02'),
(7, '14', 'Equality before law', 'The State shall not deny to any person equality before the law or the equal protection of the laws within the territory of India.', 'equality, law, protection', '2025-02-25 09:17:02'),
(8, '15', 'Prohibition of discrimination on grounds of religion, race, caste, sex or place of birth', 'The State shall not discriminate against any citizen on grounds only of religion, race, caste, sex, place of birth or any of them.', 'discrimination, religion, race, caste, sex', '2025-02-25 09:17:02'),
(9, '15(1)', 'State non-discrimination', 'The State shall not discriminate against any citizen on grounds only of religion, race, caste, sex, place of birth or any of them.', 'state, discrimination, grounds', '2025-02-25 09:17:02'),
(10, '15(2)', 'Public places access', 'No citizen shall, on grounds only of religion, race, caste, sex, place of birth or any of them, be subject to any disability, liability, restriction or condition with regard to access to shops, public restaurants, etc.', 'public places, access, restriction', '2025-02-25 09:17:02'),
(11, '15(3)', 'Special provisions for women and children', 'Nothing in this article shall prevent the State from making any special provision for women and children.', 'special provision, women, children', '2025-02-25 09:17:02'),
(12, '15(4)', 'Special provisions for advancement of socially and educationally backward classes', 'Nothing in this article shall prevent the State from making any special provision for the advancement of any socially and educationally backward classes of citizens or for the Scheduled Castes and the Scheduled Tribes.', 'backward classes, advancement, special provision', '2025-02-25 09:17:02'),
(13, '15(5)', 'Special provisions for admission to educational institutions', 'Nothing in this article or in clause (g) of clause (1) of article 19 shall prevent the State from making any special provision, by law, for the advancement of any socially and educationally backward classes of citizens or for the Scheduled Castes or the Scheduled Tribes in so far as such special provisions relate to their admission to educational institutions.', 'admission, educational institutions, backward classes', '2025-02-25 09:17:02'),
(14, '15(6)', 'Special provisions for economically weaker sections', 'Nothing in this article or article 16 shall prevent the State from making any special provision for the advancement of any economically weaker sections of citizens.', 'economically weaker sections, advancement, special provision', '2025-02-25 09:17:02'),
(15, '16', 'Equality of opportunity in matters of public employment', 'There shall be equality of opportunity for all citizens in matters relating to employment or appointment to any office under the State.', 'equality, opportunity, public employment', '2025-02-25 09:17:02'),
(16, '16(1)', 'Equal opportunity in public employment', 'There shall be equality of opportunity for all citizens in matters relating to employment or appointment to any office under the State.', 'equality, opportunity, public employment', '2025-02-25 09:17:02'),
(17, '16(2)', 'No discrimination in public employment', 'No citizen shall, on grounds only of religion, race, caste, sex, descent, place of birth, residence or any of them, be ineligible for, or discriminated against in respect of, any employment or office under the State.', 'discrimination, ineligibility, grounds', '2025-02-25 09:17:02'),
(18, '16(3)', 'Parliament may prescribe residence requirement', 'Nothing in this article shall prevent Parliament from making any law prescribing, in regard to a class or classes of employment or appointment, a requirement as to residence within that State.', 'parliament, residence requirement, employment', '2025-02-25 09:17:02'),
(19, '16(4)', 'Reservation for backward classes', 'Nothing in this article shall prevent the State from making any provision for the reservation of appointments or posts in favor of any backward class of citizens which is not adequately represented in the services under the State.', 'reservation, backward class, adequate representation', '2025-02-25 09:17:02'),
(20, '16(4A)', 'Reservation in promotion', 'Nothing in this article shall prevent the State from making any provision for reservation in matters of promotion to any class or classes of posts in the services under the State in favor of the Scheduled Castes and the Scheduled Tribes.', 'reservation, promotion, scheduled castes', '2025-02-25 09:17:02'),
(21, '16(4B)', 'Unfilled vacancies carried forward', 'Nothing in this article shall prevent the State from considering any unfilled vacancies of a year reserved for being filled up in that year in accordance with any provision for reservation made under clause (4) or clause (4A) as a separate class of vacancies to be filled up in any succeeding year or years.', 'unfilled vacancies, carried forward, separate class', '2025-02-25 09:17:02'),
(22, '16(5)', 'Religious institutions employment', 'Nothing in this article shall affect the operation of any law which provides that the incumbent of an office in connection with the affairs of any religious or denominational institution or any member of the governing body thereof shall be a person professing a particular religion or belonging to a particular denomination.', 'religious institution, employment, denomination', '2025-02-25 09:17:02'),
(23, '16(6)', 'Reservation for economically weaker sections', 'Nothing in this article shall prevent the State from making any provision for the reservation of appointments or posts in favor of any economically weaker sections of citizens.', 'reservation, economically weaker sections, appointments', '2025-02-25 09:17:02'),
(24, '17', 'Abolition of Untouchability', 'Untouchability is abolished and its practice in any form is forbidden.', 'untouchability, abolition, forbidden', '2025-02-25 09:17:02'),
(25, '18', 'Abolition of titles', 'No title shall be conferred by the State, and no citizen of India shall accept any title from any foreign State.', 'titles, abolition, foreign state', '2025-02-25 09:17:02'),
(26, '18(1)', 'No titles by state', 'No title, not being a military or academic distinction, shall be conferred by the State.', 'titles, state, military or academic distinction', '2025-02-25 09:17:02'),
(27, '18(2)', 'No titles by citizens from foreign state', 'No citizen of India shall accept any title from any foreign State.', 'titles, foreign state, citizens', '2025-02-25 09:17:02'),
(28, '18(3)', 'No titles by non-citizens from foreign state', 'No person who is not a citizen of India shall, while he holds any office of profit or trust under the State, accept without the consent of the President any title from any foreign State.', 'titles, foreign state, non-citizens', '2025-02-25 09:17:02'),
(29, '18(4)', 'No acceptance of gifts by officials without Presidents consent', 'No person holding any office of profit or trust under the State shall, without the consent of the President, accept any present, emolument, or office of any kind from or under any foreign State.', 'presents, foreign state, presidents consent', '2025-02-25 09:17:02'),
(30, '19', 'Protection of certain rights regarding freedom of speech, etc.', 'All citizens shall have the right to freedom of speech and expression, peaceful assembly, form associations or unions, move freely throughout the territory of India, reside and settle in any part of India, and to practice any profession.', 'freedom of speech, assembly, association, movement', '2025-02-25 09:17:02'),
(31, '19(1)(a)', 'Freedom of speech and expression', 'All citizens shall have the right to freedom of speech and expression.', 'speech, expression, freedom', '2025-02-25 09:17:02'),
(32, '19(1)(b)', 'Freedom of peaceful assembly', 'All citizens shall have the right to assemble peaceably and without arms.', 'assembly, peaceful, without arms', '2025-02-25 09:17:02'),
(33, '19(1)(c)', 'Freedom to form associations or unions', 'All citizens shall have the right to form associations or unions or co-operative societies.', 'associations, unions, co-operative societies', '2025-02-25 09:17:02'),
(34, '19(1)(d)', 'Freedom of movement', 'All citizens shall have the right to move freely throughout the territory of India.', 'movement, territory, freely', '2025-02-25 09:17:02'),
(35, '19(1)(e)', 'Freedom to reside and settle', 'All citizens shall have the right to reside and settle in any part of the territory of India.', 'reside, settle, territory', '2025-02-25 09:17:02'),
(36, '19(1)(g)', 'Freedom to practice profession', 'All citizens shall have the right to practice any profession, or to carry on any occupation, trade or business.', 'profession, occupation, trade', '2025-02-25 09:17:02'),
(37, '19(2)', 'Reasonable restrictions on freedom of speech', 'Nothing in sub-clause (a) of clause (1) shall affect the operation of any existing law, or prevent the State from making any law, imposing reasonable restrictions on the exercise of the right conferred by the said sub-clause in the interests of sovereignty and integrity of India, security of the State, friendly relations with foreign States, public order, decency or morality or in relation to contempt of court, defamation or incitement to an offence.', 'restrictions, speech, sovereignty', '2025-02-25 09:17:02'),
(38, '19(3)', 'Reasonable restrictions on freedom of assembly', 'Nothing in sub-clause (b) of clause (1) shall affect the operation of any existing law, or prevent the State from making any law, imposing reasonable restrictions on the exercise of the right conferred by the said sub-clause in the interests of sovereignty and integrity of India or public order.', 'restrictions, assembly, sovereignty', '2025-02-25 09:17:02'),
(39, '19(4)', 'Reasonable restrictions on freedom of associations', 'Nothing in sub-clause (c) of clause (1) shall affect the operation of any existing law, or prevent the State from making any law, imposing reasonable restrictions on the exercise of the right conferred by the said sub-clause in the interests of sovereignty and integrity of India or public order or morality.', 'restrictions, associations, sovereignty', '2025-02-25 09:17:02'),
(40, '19(5)', 'Reasonable restrictions on freedom of movement and residence', 'Nothing in sub-clauses (d) and (e) of clause (1) shall affect the operation of any existing law, or prevent the State from making any law, imposing reasonable restrictions on the exercise of any of the rights conferred by the said sub-clauses either in the interests of the general public or for the protection of the interests of any Scheduled Tribe.', 'restrictions, movement, residence', '2025-02-25 09:17:02'),
(41, '19(6)', 'Reasonable restrictions on freedom of profession', 'Nothing in sub-clause (g) of clause (1) shall affect the operation of any existing law, or prevent the State from making any law, imposing reasonable restrictions on the exercise of the right conferred by the said sub-clause in the interests of the general public, and, in particular, nothing in the said sub-clause shall affect the operation of any existing law in so far as it relates to, or prevent the State from making any law relating to the professional or technical qualifications necessary for practicing any profession or carrying on any occupation, trade or business.', 'restrictions, profession, qualifications', '2025-02-25 09:17:02'),
(42, '20', 'Protection in respect of conviction for offences', 'No person shall be convicted of any offence except for violation of the law in force, nor subjected to a penalty greater than that prescribed.', 'conviction, ex post facto, double jeopardy', '2025-02-25 09:17:02'),
(43, '20(1)', 'Ex post facto law', 'No person shall be convicted of any offence except for violation of a law in force at the time of the commission of the act charged as an offence, nor be subjected to a penalty greater than that which might have been inflicted under the law in force at the time of the commission of the offence.', 'ex post facto, conviction, penalty', '2025-02-25 09:17:02'),
(44, '20(2)', 'Double jeopardy', 'No person shall be prosecuted and punished for the same offence more than once.', 'double jeopardy, prosecution, punishment', '2025-02-25 09:17:02'),
(45, '20(3)', 'Self-incrimination', 'No person accused of any offence shall be compelled to be a witness against himself.', 'self-incrimination, witness, accused', '2025-02-25 09:17:02'),
(46, '21', 'Protection of life and personal liberty', 'No person shall be deprived of his life or personal liberty except according to procedure established by law.', 'life, liberty, procedure established by law', '2025-02-25 09:17:02'),
(47, '21A', 'Right to education', 'The State shall provide free and compulsory education to all children of the age of six to fourteen years.', 'education, free, compulsory, children', '2025-02-25 09:17:02'),
(48, '22', 'Protection against arrest and detention in certain cases', 'No person shall be detained in custody without being informed of the grounds for arrest, denied the right to consult and defend by a legal practitioner.', 'arrest, detention, legal practitioner', '2025-02-25 09:17:02'),
(49, '22(1)', 'Rights upon arrest', 'No person who is arrested shall be detained in custody without being informed, as soon as may be, of the grounds for such arrest nor shall he be denied the right to consult, and to be defended by, a legal practitioner of his choice.', 'arrest, grounds, legal practitioner', '2025-02-25 09:17:02'),
(50, '22(2)', 'Production before magistrate', 'Every person who is arrested and detained in custody shall be produced before the nearest magistrate within a period of twenty-four hours of such arrest excluding the time necessary for the journey from the place of arrest to the court of the magistrate.', 'production, magistrate, twenty-four hours', '2025-02-25 09:17:02'),
(51, '22(3)', 'Exception for enemy aliens and preventive detention', 'Nothing in clauses (1) and (2) shall apply to any person who for the time being is an enemy alien; or to any person who is arrested or detained under any law providing for preventive detention.', 'enemy alien, preventive detention, exception', '2025-02-25 09:17:02'),
(52, '22(4)', 'Maximum period of preventive detention', 'No law providing for preventive detention shall authorise the detention of a person for a longer period than three months unless an Advisory Board has reported before the expiration of the said period of three months that there is sufficient cause for such detention.', 'preventive detention, advisory board, three months', '2025-02-25 09:17:02'),
(53, '22(5)', 'Communication of grounds of detention', 'When any person is detained in pursuance of an order made under any law providing for preventive detention, the authority making the order shall, as soon as may be, communicate to such person the grounds on which the order has been made and shall afford him the earliest opportunity of making a representation against the order.', 'grounds, communication, representation', '2025-02-25 09:17:02'),
(54, '22(6)', 'Preventive detention laws', 'Nothing in clause (5) shall require the authority making any such order as is referred to in that clause to disclose facts which such authority considers to be against the public interest to disclose.', 'preventive detention, disclosure, public interest', '2025-02-25 09:17:02'),
(55, '22(7)', 'Parliamentary power to prescribe', 'Parliament may by law prescribe the circumstances under which, and the class or classes of cases in which, a person may be detained for a period longer than three months under any law providing for preventive detention without obtaining the opinion of an Advisory Board.', 'parliament, preventive detention, advisory board', '2025-02-25 09:17:02'),
(56, '23', 'Prohibition of traffic in human beings and forced labour', 'Traffic in human beings and forced labour are prohibited.', 'human trafficking, forced labour, prohibition', '2025-02-25 09:17:02'),
(57, '23(1)', 'Prohibition of traffic and forced labor', 'Traffic in human beings and begar and other similar forms of forced labour are prohibited and any contravention of this provision shall be an offence punishable in accordance with law.', 'traffic, begar, forced labor', '2025-02-25 09:17:02'),
(58, '23(2)', 'Exception for public purposes', 'Nothing in this article shall prevent the State from imposing compulsory service for public purposes, and in imposing such service the State shall not make any discrimination on grounds only of religion, race, caste or class or any of them.', 'compulsory service, public purposes, discrimination', '2025-02-25 09:17:02'),
(59, '24', 'Prohibition of employment of children in factories, etc.', 'No child below the age of fourteen years shall be employed to work in any factory or mine or engaged in any other hazardous employment.', 'child labour, factories, hazardous employment', '2025-02-25 09:17:02'),
(60, '25', 'Freedom of conscience and free profession, practice and propagation of religion', 'All persons are equally entitled to freedom of conscience and the right to freely profess, practice, and propagate religion.', 'conscience, religion, freedom', '2025-02-25 09:17:02'),
(61, '25(1)', 'Freedom of conscience and religion', 'Subject to public order, morality and health and to the other provisions of this Part, all persons are equally entitled to freedom of conscience and the right freely to profess, practise and propagate religion.', 'conscience, profess, practice', '2025-02-25 09:17:02'),
(62, '25(2)(a)', 'Regulation of economic, financial, political activity', 'Nothing in this article shall affect the operation of any existing law or prevent the State from making any law regulating or restricting any economic, financial, political or other secular activity which may be associated with religious practice.', 'economic activity, regulation, secular', '2025-02-25 09:17:02'),
(63, '25(2)(b)', 'Social welfare and reform', 'Nothing in this article shall affect the operation of any existing law or prevent the State from making any law providing for social welfare and reform or the throwing open of Hindu religious institutions of a public character to all classes and sections of Hindus.', 'social welfare, reform, Hindu institutions', '2025-02-25 09:17:02'),
(64, '25(3)', 'Definition of Hindu', 'The reference to Hindus shall be construed as including a reference to persons professing the Sikh, Jaina or Buddhist religion, and the reference to Hindu religious institutions shall be construed accordingly.', 'Hindu, Sikh, Jaina, Buddhist', '2025-02-25 09:17:02'),
(65, '26', 'Freedom to manage religious affairs', 'Freedom to manage religious affairs subject to public order, morality and health.', 'religious affairs, management, institutions', '2025-02-25 09:17:02'),
(66, '26(a)', 'Establish and maintain institutions', 'Freedom to establish and maintain institutions for religious and charitable purposes.', 'religious institutions, establishment, maintenance', '2025-02-25 09:17:02'),
(67, '26(b)', 'Manage own affairs in religion', 'Freedom to manage its own affairs in matters of religion.', 'religious affairs, management, religion', '2025-02-25 09:17:02'),
(68, '26(c)', 'Own and acquire property', 'Freedom to own and acquire movable and immovable property.', 'property, acquisition, ownership', '2025-02-25 09:17:02'),
(69, '26(d)', 'Administer property', 'Freedom to administer such property in accordance with law.', 'administration, property, law', '2025-02-25 09:17:02'),
(70, '27', 'Freedom as to payment of taxes for promotion of any particular religion', 'No person shall be compelled to pay any taxes for the promotion or maintenance of any particular religion.', 'taxes, religion, promotion', '2025-02-25 09:17:02'),
(71, '28', 'Freedom as to attendance at religious instruction or religious worship in certain educational institutions', 'No religious instruction shall be provided in educational institutions wholly maintained out of State funds.', 'religious instruction, educational institutions', '2025-02-25 09:17:02'),
(72, '28(1)', 'No religious instruction in state-funded institutions', 'No religious instruction shall be provided in any educational institution wholly maintained out of State funds.', 'religious instruction, state funds, educational institution', '2025-02-25 09:17:02'),
(73, '28(2)', 'Religious instruction in state-aided institutions', 'Nothing in clause (1) shall apply to an educational institution which is administered by the State but has been established under any endowment or trust which requires that religious instruction shall be imparted in such institution.', 'religious instruction, endowment, trust', '2025-02-25 09:17:02'),
(74, '28(3)', 'No compulsion to attend religious instruction', 'No person attending any educational institution recognised by the State or receiving aid out of State funds shall be required to take part in any religious instruction that may be imparted in such institution or to attend any religious worship that may be conducted in such institution.', 'religious instruction, attendance, compulsion', '2025-02-25 09:17:02'),
(75, '29', 'Protection of interests of minorities', 'Any section of citizens having a distinct language, script or culture of its own shall have the right to conserve the same.', 'minorities, culture, language, script', '2025-02-25 09:17:02'),
(76, '29(1)', 'Right to conserve language, script, culture', 'Any section of the citizens residing in the territory of India or any part thereof having a distinct language, script or culture of its own shall have the right to conserve the same.', 'language, script, culture', '2025-02-25 09:17:02'),
(77, '29(2)', 'Non-discrimination in state-aided institutions', 'No citizen shall be denied admission into any educational institution maintained by the State or receiving aid out of State funds on grounds only of religion, race, caste, language or any of them.', 'admission, educational institution, discrimination', '2025-02-25 09:17:02'),
(78, '30', 'Right of minorities to establish and administer educational institutions', 'All minorities have the right to establish and administer educational institutions of their choice.', 'minorities, educational institutions', '2025-02-25 09:17:02'),
(79, '30(1)', 'Right to establish educational institutions', 'All minorities, whether based on religion or language, shall have the right to establish and administer educational institutions of their choice.', 'minorities, educational institutions, establishment', '2025-02-25 09:17:02'),
(80, '30(1A)', 'Property acquisition for educational institutions', 'In making any law providing for the compulsory acquisition of any property of an educational institution established and administered by a minority, the State shall ensure that the amount fixed by or determined under such law for the acquisition of such property is such as would not restrict or abrogate the right guaranteed under that clause.', 'acquisition, property, educational institutions', '2025-02-25 09:17:02'),
(81, '30(2)', 'State aid to educational institutions', 'The State shall not, in granting aid to educational institutions, discriminate against any educational institution on the ground that it is under the management of a minority, whether based on religion or language.', 'state aid, discrimination, management', '2025-02-25 09:17:02'),
(82, '31', 'Repealed by the Constitution (Forty-fourth Amendment) Act, 1978', 'This article was related to the right to property and has been repealed.', 'property, repealed, amendment', '2025-02-25 09:17:02'),
(83, '31A', 'Saving of laws providing for acquisition of estates, etc.', 'Notwithstanding anything contained in article 13, no law providing for the acquisition by the State of any estate or of any rights therein or the extinguishment or modification of any such rights shall be deemed to be void on the ground that it is inconsistent with, or takes away or abridges any of the rights conferred by article 14 or article 19.', 'acquisition, estates, rights', '2025-02-25 09:17:02'),
(84, '31B', 'Validation of certain Acts and Regulations', 'Without prejudice to the generality of the provisions contained in article 31A, none of the Acts and Regulations specified in the Ninth Schedule nor any of the provisions thereof shall be deemed to be void, or ever to have become void, on the ground that such Act, Regulation or provision is inconsistent with, or takes away or abridges any of the rights conferred by, any provisions of this Part, and notwithstanding any judgment, decree or order of any court or Tribunal to the contrary, each of the said Acts and Regulations shall, subject to the power of any competent Legislature to repeal or amend it, continue in force.', 'ninth schedule, validation, acts', '2025-02-25 09:17:02'),
(85, '31C', 'Saving of laws giving effect to certain directive principles', 'Notwithstanding anything contained in article 13, no law giving effect to the policy of the State towards securing the principles specified in clause (b) or clause (c) of article 39 shall be deemed to be void on the ground that it is inconsistent with, or takes away or abridges any of the rights conferred by article 14 or article 19.', 'directive principles, saving, policy', '2025-02-25 09:17:02'),
(86, '31D', 'Repealed by the Constitution (Forty-third Amendment) Act, 1977', 'This article was related to saving of laws in respect of anti-national activities and has been repealed.', 'anti-national activities, repealed, amendment', '2025-02-25 09:17:02'),
(87, '32', 'Remedies for enforcement of rights conferred by this Part', 'The right to move the Supreme Court for the enforcement of fundamental rights.', 'supreme court, enforcement, writs', '2025-02-25 09:17:02'),
(88, '32A', 'Repealed by the Constitution (Forty-third Amendment) Act, 1977', 'This article was related to constitutional validity of State laws not to be considered in proceedings under article 32 and has been repealed.', 'state laws, validity, repealed', '2025-02-25 09:17:02'),
(89, '33', 'Power of Parliament to modify the rights conferred by this Part in their application to Forces, etc.', 'Parliament may restrict or abrogate the application of fundamental rights to the armed forces.', 'armed forces, restriction, parliament', '2025-02-25 09:17:02'),
(90, '34', 'Restriction on rights conferred by this Part while martial law is in force in any area', 'Parliament may indemnify persons in service of the Union or a State for acts done during martial law.', 'martial law, indemnify, restrictions', '2025-02-25 09:17:02'),
(91, '35', 'Legislation to give effect to the provisions of this Part', 'Parliament has exclusive power to make laws giving effect to the provisions of fundamental rights.', 'legislation, parliament, implementation', '2025-02-25 09:17:02'),
(92, '35(a)', 'Parliaments exclusive power', 'Parliament shall have, and the Legislature of a State shall not have, power to make laws with respect to any of the matters which under clause (3) of article 16, clause (3) of article 32, article 33 and article 34 may be provided for by law made by Parliament.', 'parliament, exclusive, power', '2025-02-25 09:17:02'),
(93, '35(b)', 'Laws made before constitution', 'Any law made by Parliament with respect to the enforcement of any such right conferred by this Part, in existence at the commencement of this Constitution shall continue in force until altered or repealed or amended by Parliament.', 'existing laws, continuance, alteration', '2025-02-25 09:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `constitution_part4`
--

CREATE TABLE `constitution_part4` (
  `SNo` int(11) NOT NULL,
  `ArticleNo` varchar(20) NOT NULL,
  `ArticleDefinition` varchar(255) NOT NULL,
  `ArticleDescription` text DEFAULT NULL,
  `Keywords` varchar(255) DEFAULT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constitution_part4`
--

INSERT INTO `constitution_part4` (`SNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, '36', 'Definition', 'In this Part, unless the context otherwise requires, \"the State\" has the same meaning as in Part III.', 'definition, state, directive principles', '0000-00-00 00:00:00'),
(2, '37', 'Application of the principles contained in this Part', 'The provisions contained in this Part shall not be enforceable by any court, but the principles therein laid down are nevertheless fundamental in the governance of the country and it shall be the duty of the State to apply these principles in making laws.', 'application, principles, non-enforceable, governance', '0000-00-00 00:00:00'),
(3, '38', 'State to secure a social order for the promotion of welfare of the people', '(1) The State shall strive to promote the welfare of the people by securing and protecting as effectively as it may a social order in which justice, social, economic and political, shall inform all the institutions of the national life.\n(2) The State shall, in particular, strive to minimise the inequalities in income, and endeavour to eliminate inequalities in status, facilities and opportunities, not only amongst individuals but also amongst groups of people residing in different areas or engaged in different vocations.', 'social order, welfare, justice, inequality', '0000-00-00 00:00:00'),
(4, '39', 'Certain principles of policy to be followed by the State', 'The State shall, in particular, direct its policy towards securing—\n(a) that the citizens, men and women equally, have the right to an adequate means of livelihood;\n(b) that the ownership and control of the material resources of the community are so distributed as best to subserve the common good;\n(c) that the operation of the economic system does not result in the concentration of wealth and means of production to the common detriment;\n(d) that there is equal pay for equal work for both men and women;\n(e) that the health and strength of workers, men and women, and the tender age of children are not abused and that citizens are not forced by economic necessity to enter avocations unsuited to their age or strength;\n(f) that children are given opportunities and facilities to develop in a healthy manner and in conditions of freedom and dignity and that childhood and youth are protected against exploitation and against moral and material abandonment.', 'policy principles, livelihood, resources, equal pay, child protection', '0000-00-00 00:00:00'),
(5, '39A', 'Equal justice and free legal aid', 'The State shall secure that the operation of the legal system promotes justice, on a basis of equal opportunity, and shall, in particular, provide free legal aid, by suitable legislation or schemes or in any other way, to ensure that opportunities for securing justice are not denied to any citizen by reason of economic or other disabilities.', 'equal justice, legal aid, opportunity', '1976-12-02 18:30:00'),
(6, '40', 'Organisation of village panchayats', 'The State shall take steps to organise village panchayats and endow them with such powers and authority as may be necessary to enable them to function as units of self-government.', 'village panchayats, self-government, rural', '0000-00-00 00:00:00'),
(7, '41', 'Right to work, to education and to public assistance in certain cases', 'The State shall, within the limits of its economic capacity and development, make effective provision for securing the right to work, to education and to public assistance in cases of unemployment, old age, sickness and disablement, and in other cases of undeserved want.', 'right to work, education, public assistance, welfare', '0000-00-00 00:00:00'),
(8, '42', 'Provision for just and humane conditions of work and maternity relief', 'The State shall make provision for securing just and humane conditions of work and for maternity relief.', 'work conditions, maternity relief, humane', '0000-00-00 00:00:00'),
(9, '43', 'Living wage, etc., for workers', 'The State shall endeavour to secure, by suitable legislation or economic organisation or in any other way, to all workers, agricultural, industrial or otherwise, work, a living wage, conditions of work ensuring a decent standard of life and full enjoyment of leisure and social and cultural opportunities and, in particular, the State shall endeavour to promote cottage industries on an individual or co-operative basis in rural areas.', 'living wage, workers, decent life, cottage industries', '0000-00-00 00:00:00'),
(10, '43A', 'Participation of workers in management of industries', 'The State shall take steps, by suitable legislation or in any other way, to secure the participation of workers in the management of undertakings, establishments or other organisations engaged in any industry.', 'workers participation, management, industry', '1976-12-02 18:30:00'),
(11, '43B', 'Promotion of co-operative societies', 'The State shall endeavour to promote voluntary formation, autonomous functioning, democratic control and professional management of co-operative societies.', 'co-operative societies, voluntary, autonomous', '2011-01-11 18:30:00'),
(12, '44', 'Uniform civil code for the citizens', 'The State shall endeavour to secure for the citizens a uniform civil code throughout the territory of India.', 'uniform civil code, personal law', '0000-00-00 00:00:00'),
(13, '45', 'Provision for early childhood care and education to children below the age of six years', 'The State shall endeavour to provide early childhood care and education for all children until they complete the age of six years.', 'early childhood, care, education', '0000-00-00 00:00:00'),
(14, '46', 'Promotion of educational and economic interests of Scheduled Castes, Scheduled Tribes and other weaker sections', 'The State shall promote with special care the educational and economic interests of the weaker sections of the people, and, in particular, of the Scheduled Castes and the Scheduled Tribes, and shall protect them from social injustice and all forms of exploitation.', 'scheduled castes, scheduled tribes, weaker sections, education', '0000-00-00 00:00:00'),
(15, '47', 'Duty of the State to raise the level of nutrition and the standard of living and to improve public health', 'The State shall regard the raising of the level of nutrition and the standard of living of its people and the improvement of public health as among its primary duties and, in particular, the State shall endeavour to bring about prohibition of the consumption except for medicinal purposes of intoxicating drinks and of drugs which are injurious to health.', 'nutrition, standard of living, public health, prohibition', '0000-00-00 00:00:00'),
(16, '48', 'Organisation of agriculture and animal husbandry', 'The State shall endeavour to organise agriculture and animal husbandry on modern and scientific lines and shall, in particular, take steps for preserving and improving the breeds, and prohibiting the slaughter, of cows and calves and other milch and draught cattle.', 'agriculture, animal husbandry, cow protection', '0000-00-00 00:00:00'),
(17, '48A', 'Protection and improvement of environment and safeguarding of forests and wild life', 'The State shall endeavour to protect and improve the environment and to safeguard the forests and wild life of the country.', 'environment, forests, wildlife, protection', '1976-12-02 18:30:00'),
(18, '49', 'Protection of monuments and places and objects of national importance', 'It shall be the obligation of the State to protect every monument or place or object of artistic or historic interest, declared by or under law made by Parliament to be of national importance, from spoliation, disfigurement, destruction, removal, disposal or export, as the case may be.', 'monuments, historic, protection, national importance', '0000-00-00 00:00:00'),
(19, '50', 'Separation of judiciary from executive', 'The State shall take steps to separate the judiciary from the executive in the public services of the State.', 'judiciary, executive, separation, independence', '0000-00-00 00:00:00'),
(20, '51', 'Promotion of international peace and security', 'The State shall endeavour to—\n(a) promote international peace and security;\n(b) maintain just and honourable relations between nations;\n(c) foster respect for international law and treaty obligations in the dealings of organised peoples with one another; and\n(d) encourage settlement of international disputes by arbitration.', 'international peace, security, relations, arbitration', '0000-00-00 00:00:00'),
(21, '36', 'Definition', 'In this Part, unless the context otherwise requires, \"the State\" has the same meaning as in Part III.', 'definition, state, directive principles', '0000-00-00 00:00:00'),
(22, '37', 'Application of the principles contained in this Part', 'The provisions contained in this Part shall not be enforceable by any court, but the principles therein laid down are nevertheless fundamental in the governance of the country and it shall be the duty of the State to apply these principles in making laws.', 'application, principles, non-enforceable, governance', '0000-00-00 00:00:00'),
(23, '38', 'State to secure a social order for the promotion of welfare of the people', '(1) The State shall strive to promote the welfare of the people by securing and protecting as effectively as it may a social order in which justice, social, economic and political, shall inform all the institutions of the national life.\n(2) The State shall, in particular, strive to minimise the inequalities in income, and endeavour to eliminate inequalities in status, facilities and opportunities, not only amongst individuals but also amongst groups of people residing in different areas or engaged in different vocations.', 'social order, welfare, justice, inequality', '0000-00-00 00:00:00'),
(24, '39', 'Certain principles of policy to be followed by the State', 'The State shall, in particular, direct its policy towards securing—\n(a) that the citizens, men and women equally, have the right to an adequate means of livelihood;\n(b) that the ownership and control of the material resources of the community are so distributed as best to subserve the common good;\n(c) that the operation of the economic system does not result in the concentration of wealth and means of production to the common detriment;\n(d) that there is equal pay for equal work for both men and women;\n(e) that the health and strength of workers, men and women, and the tender age of children are not abused and that citizens are not forced by economic necessity to enter avocations unsuited to their age or strength;\n(f) that children are given opportunities and facilities to develop in a healthy manner and in conditions of freedom and dignity and that childhood and youth are protected against exploitation and against moral and material abandonment.', 'policy principles, livelihood, resources, equal pay, child protection', '0000-00-00 00:00:00'),
(25, '39A', 'Equal justice and free legal aid', 'The State shall secure that the operation of the legal system promotes justice, on a basis of equal opportunity, and shall, in particular, provide free legal aid, by suitable legislation or schemes or in any other way, to ensure that opportunities for securing justice are not denied to any citizen by reason of economic or other disabilities.', 'equal justice, legal aid, opportunity', '1976-12-02 18:30:00'),
(26, '40', 'Organisation of village panchayats', 'The State shall take steps to organise village panchayats and endow them with such powers and authority as may be necessary to enable them to function as units of self-government.', 'village panchayats, self-government, rural', '0000-00-00 00:00:00'),
(27, '41', 'Right to work, to education and to public assistance in certain cases', 'The State shall, within the limits of its economic capacity and development, make effective provision for securing the right to work, to education and to public assistance in cases of unemployment, old age, sickness and disablement, and in other cases of undeserved want.', 'right to work, education, public assistance, welfare', '0000-00-00 00:00:00'),
(28, '42', 'Provision for just and humane conditions of work and maternity relief', 'The State shall make provision for securing just and humane conditions of work and for maternity relief.', 'work conditions, maternity relief, humane', '0000-00-00 00:00:00'),
(29, '43', 'Living wage, etc., for workers', 'The State shall endeavour to secure, by suitable legislation or economic organisation or in any other way, to all workers, agricultural, industrial or otherwise, work, a living wage, conditions of work ensuring a decent standard of life and full enjoyment of leisure and social and cultural opportunities and, in particular, the State shall endeavour to promote cottage industries on an individual or co-operative basis in rural areas.', 'living wage, workers, decent life, cottage industries', '0000-00-00 00:00:00'),
(30, '43A', 'Participation of workers in management of industries', 'The State shall take steps, by suitable legislation or in any other way, to secure the participation of workers in the management of undertakings, establishments or other organisations engaged in any industry.', 'workers participation, management, industry', '1976-12-02 18:30:00'),
(31, '43B', 'Promotion of co-operative societies', 'The State shall endeavour to promote voluntary formation, autonomous functioning, democratic control and professional management of co-operative societies.', 'co-operative societies, voluntary, autonomous', '2011-01-11 18:30:00'),
(32, '44', 'Uniform civil code for the citizens', 'The State shall endeavour to secure for the citizens a uniform civil code throughout the territory of India.', 'uniform civil code, personal law', '0000-00-00 00:00:00'),
(33, '45', 'Provision for early childhood care and education to children below the age of six years', 'The State shall endeavour to provide early childhood care and education for all children until they complete the age of six years.', 'early childhood, care, education', '0000-00-00 00:00:00'),
(34, '46', 'Promotion of educational and economic interests of Scheduled Castes, Scheduled Tribes and other weaker sections', 'The State shall promote with special care the educational and economic interests of the weaker sections of the people, and, in particular, of the Scheduled Castes and the Scheduled Tribes, and shall protect them from social injustice and all forms of exploitation.', 'scheduled castes, scheduled tribes, weaker sections, education', '0000-00-00 00:00:00'),
(35, '47', 'Duty of the State to raise the level of nutrition and the standard of living and to improve public health', 'The State shall regard the raising of the level of nutrition and the standard of living of its people and the improvement of public health as among its primary duties and, in particular, the State shall endeavour to bring about prohibition of the consumption except for medicinal purposes of intoxicating drinks and of drugs which are injurious to health.', 'nutrition, standard of living, public health, prohibition', '0000-00-00 00:00:00'),
(36, '48', 'Organisation of agriculture and animal husbandry', 'The State shall endeavour to organise agriculture and animal husbandry on modern and scientific lines and shall, in particular, take steps for preserving and improving the breeds, and prohibiting the slaughter, of cows and calves and other milch and draught cattle.', 'agriculture, animal husbandry, cow protection', '0000-00-00 00:00:00'),
(37, '48A', 'Protection and improvement of environment and safeguarding of forests and wild life', 'The State shall endeavour to protect and improve the environment and to safeguard the forests and wild life of the country.', 'environment, forests, wildlife, protection', '1976-12-02 18:30:00'),
(38, '49', 'Protection of monuments and places and objects of national importance', 'It shall be the obligation of the State to protect every monument or place or object of artistic or historic interest, declared by or under law made by Parliament to be of national importance, from spoliation, disfigurement, destruction, removal, disposal or export, as the case may be.', 'monuments, historic, protection, national importance', '0000-00-00 00:00:00'),
(39, '50', 'Separation of judiciary from executive', 'The State shall take steps to separate the judiciary from the executive in the public services of the State.', 'judiciary, executive, separation, independence', '0000-00-00 00:00:00'),
(40, '51', 'Promotion of international peace and security', 'The State shall endeavour to—\n(a) promote international peace and security;\n(b) maintain just and honourable relations between nations;\n(c) foster respect for international law and treaty obligations in the dealings of organised peoples with one another; and\n(d) encourage settlement of international disputes by arbitration.', 'international peace, security, relations, arbitration', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `constitution_part6`
--

CREATE TABLE `constitution_part6` (
  `SNo` int(11) NOT NULL,
  `ArticleNo` varchar(10) NOT NULL,
  `ArticleDefinition` varchar(255) NOT NULL,
  `ArticleDescription` text NOT NULL,
  `Keywords` varchar(255) NOT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constitution_part6`
--

INSERT INTO `constitution_part6` (`SNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, '152', 'Definition', 'In this Part, unless the context otherwise requires, the expression \"State\" does not include the State of Jammu and Kashmir.', 'definition, state, jammu kashmir', '2025-02-28 05:00:05'),
(2, '153', 'Governors of States', 'There shall be a Governor for each State. One person can be appointed as Governor for two or more States.', 'governor, appointment, states', '2025-02-28 05:00:05'),
(3, '154', 'Executive power of State', 'The executive power of the State shall be vested in the Governor and shall be exercised by him either directly or through officers subordinate to him in accordance with this Constitution.', 'executive power, governor, state', '2025-02-28 05:00:05'),
(4, '155', 'Appointment of Governor', 'The Governor of a State shall be appointed by the President by warrant under his hand and seal.', 'governor, appointment, president', '2025-02-28 05:00:05'),
(5, '156', 'Term of office of Governor', 'The Governor shall hold office during the pleasure of the President. The Governor may, by writing under his hand addressed to the President, resign his office.', 'governor, term, resignation', '2025-02-28 05:00:05'),
(6, '157', 'Qualifications for appointment as Governor', 'No person shall be eligible for appointment as Governor unless he is a citizen of India and has completed the age of thirty-five years.', 'governor, qualifications, citizenship, age', '2025-02-28 05:00:05'),
(7, '158', 'Conditions of Governor office', 'The Governor shall not be a member of either House of Parliament or of a House of the Legislature of any State. The Governor shall not hold any other office of profit.', 'governor, conditions, profit, parliament, legislature', '2025-02-28 05:00:05'),
(8, '159', 'Oath or affirmation by the Governor', 'Every Governor shall, before entering upon his office, make and subscribe in the presence of the Chief Justice of the High Court an oath or affirmation.', 'governor, oath, affirmation, chief justice', '2025-02-28 05:00:05'),
(9, '160', 'Discharge of the functions of the Governor', 'The President may make such provision as he thinks fit for the discharge of the functions of the Governor in any contingency not provided for in this Chapter.', 'governor, functions, president, contingency', '2025-02-28 05:00:05'),
(10, '161', 'Power of Governor to grant pardons, etc.', 'The Governor of a State shall have the power to grant pardons, reprieves, respites or remissions of punishment or to suspend, remit or commute the sentence of any person convicted of any offence against any law relating to a matter to which the executive power of the State extends.', 'governor, pardons, reprieves, punishment, sentence', '2025-02-28 05:00:05'),
(11, '162', 'Extent of executive power of State', 'The executive power of a State shall extend to the matters with respect to which the Legislature of the State has power to make laws.', 'executive power, state, legislature', '2025-02-28 05:00:05'),
(12, '163', 'Council of Ministers to aid and advise Governor', 'There shall be a Council of Ministers with the Chief Minister at the head to aid and advise the Governor in the exercise of his functions.', 'council of ministers, chief minister, governor, advice', '2025-02-28 05:00:05'),
(13, '164', 'Other provisions as to Ministers', 'The Chief Minister shall be appointed by the Governor and the other Ministers shall be appointed by the Governor on the advice of the Chief Minister. The Ministers shall hold office during the pleasure of the Governor.', 'ministers, appointment, chief minister, governor', '2025-02-28 05:00:05'),
(14, '165', 'Advocate-General for the State', 'The Governor of each State shall appoint a person who is qualified to be appointed a Judge of a High Court to be Advocate-General for the State.', 'advocate-general, appointment, qualifications', '2025-02-28 05:00:05'),
(15, '166', 'Conduct of business of the Government of a State', 'All executive action of the Government of a State shall be expressed to be taken in the name of the Governor.', 'business, government, governor, executive action', '2025-02-28 05:00:05'),
(16, '167', 'Duties of Chief Minister', 'It shall be the duty of the Chief Minister to communicate to the Governor all decisions of the Council of Ministers relating to the administration of the affairs of the State and proposals for legislation.', 'chief minister, duties, governor, council of ministers', '2025-02-28 05:00:05'),
(17, '168', 'Constitution of Legislatures in States', 'For every State, there shall be a Legislature which shall consist of the Governor, and in some States, two Houses (Legislative Assembly and Legislative Council), and in others, one House (Legislative Assembly).', 'legislature, houses, legislative assembly, legislative council', '2025-02-28 05:00:05'),
(18, '169', 'Abolition or creation of Legislative Councils in States', 'Parliament may by law provide for the abolition of the Legislative Council of a State or for the creation of such a Council in a State not having one.', 'legislative council, abolition, creation, parliament', '2025-02-28 05:00:05'),
(19, '170', 'Composition of the Legislative Assemblies', 'The Legislative Assembly of each State shall consist of not more than five hundred, and not less than sixty, members.', 'legislative assembly, composition, members', '2025-02-28 05:00:05'),
(20, '171', 'Composition of the Legislative Councils', 'The total number of members in the Legislative Council of a State having such a Council shall not exceed one-third of the total number of members in the Legislative Assembly of that State.', 'legislative council, composition, members', '2025-02-28 05:00:05'),
(21, '172', 'Duration of State Legislatures', 'Every Legislative Assembly of every State, unless sooner dissolved, shall continue for five years from the date appointed for its first meeting.', 'legislative assembly, duration, dissolution', '2025-02-28 05:00:05'),
(22, '173', 'Qualification for membership of the State Legislature', 'A person shall not be qualified to be chosen to fill a seat in the Legislature of a State unless he is a citizen of India, is not less than twenty-five years of age for the Legislative Assembly, or not less than thirty years of age for the Legislative Council.', 'legislature, qualifications, citizenship, age', '2025-02-28 05:00:05'),
(23, '174', 'Sessions of the State Legislature, prorogation and dissolution', 'The Governor shall from time to time summon the House or each House of the Legislature of the State to meet at such time and place as he thinks fit.', 'legislature, sessions, prorogation, dissolution', '2025-02-28 05:00:05'),
(24, '175', 'Right of Governor to address and send messages to the House', 'The Governor may address the Legislative Assembly or Legislative Council of the State and may send messages to the House.', 'governor, address, messages, house', '2025-02-28 05:00:05'),
(25, '176', 'Special address by the Governor', 'At the commencement of the first session after each general election and at the commencement of the first session of each year, the Governor shall address the Legislative Assembly.', 'governor, special address, legislative assembly', '2025-02-28 05:00:05'),
(26, '177', 'Rights of Ministers as respects the Houses', 'Every Minister and the Advocate-General for a State shall have the right to speak in, and take part in the proceedings of, the Legislative Assembly of the State or any Legislative Council of the State.', 'ministers, rights, houses, proceedings', '2025-02-28 05:00:05'),
(27, '178', 'The Speaker and Deputy Speaker of the Legislative Assembly', 'Every Legislative Assembly of a State shall choose two members of the Assembly to be respectively Speaker and Deputy Speaker.', 'speaker, deputy speaker, legislative assembly', '2025-02-28 05:00:05'),
(28, '179', 'Vacation and resignation of, and removal from, the offices of Speaker and Deputy Speaker', 'A member holding office as Speaker or Deputy Speaker of an Assembly may be removed from his office by a resolution of the Assembly passed by a majority of all the then members of the Assembly.', 'speaker, deputy speaker, vacation, resignation, removal', '2025-02-28 05:00:05'),
(29, '180', 'Power of the Deputy Speaker or other person to perform the duties of the office of Speaker', 'While the office of Speaker is vacant, the duties of the office shall be performed by the Deputy Speaker or other member of the Assembly as determined.', 'deputy speaker, duties, speaker office', '2025-02-28 05:00:05'),
(30, '181', 'The Speaker or the Deputy Speaker not to preside while a resolution for his removal from office is under consideration', 'At any sitting of the Legislative Assembly, while any resolution for the removal of the Speaker or the Deputy Speaker from his office is under consideration, the Speaker or Deputy Speaker shall not preside.', 'speaker, deputy speaker, removal resolution', '2025-02-28 05:00:05'),
(31, '182', 'The Chairman and Deputy Chairman of the Legislative Council', 'Every Legislative Council of a State having such Council shall choose two members of the Council to be respectively Chairman and Deputy Chairman.', 'chairman, deputy chairman, legislative council', '2025-02-28 05:00:05'),
(32, '183', 'Vacation and resignation of, and removal from, the offices of Chairman and Deputy Chairman', 'A member holding office as Chairman or Deputy Chairman of a Legislative Council may be removed from his office by a resolution passed by a majority of all the members of the Council.', 'chairman, deputy chairman, vacation, resignation, removal', '2025-02-28 05:00:05'),
(33, '184', 'Power of the Deputy Chairman or other person to perform the duties of the office of Chairman', 'While the office of Chairman is vacant, the duties of the office shall be performed by the Deputy Chairman or other member of the Council as determined.', 'deputy chairman, duties, chairman office', '2025-02-28 05:00:05'),
(34, '185', 'The Chairman or the Deputy Chairman not to preside while a resolution for his removal from office is under consideration', 'At any sitting of the Legislative Council, while any resolution for the removal of the Chairman or the Deputy Chairman from his office is under consideration, the Chairman or Deputy Chairman shall not preside.', 'chairman, deputy chairman, removal resolution', '2025-02-28 05:00:05'),
(35, '186', 'Salaries and allowances of the Speaker and Deputy Speaker and the Chairman and Deputy Chairman', 'There shall be paid to the Speaker and the Deputy Speaker of the Legislative Assembly, and to the Chairman and the Deputy Chairman of the Legislative Council, such salaries and allowances as may be determined by law.', 'salaries, allowances, speaker, chairman', '2025-02-28 05:00:05'),
(36, '187', 'Secretariat of State Legislature', 'The House or each House of the Legislature of a State shall have a separate secretarial staff.', 'secretariat, legislature, staff', '2025-02-28 05:00:05'),
(37, '188', 'Oath or affirmation by members', 'Every member of the Legislative Assembly or the Legislative Council of a State shall, before taking his seat, make and subscribe an oath or affirmation according to the form set out for the purpose.', 'oath, affirmation, members, legislature', '2025-02-28 05:00:05'),
(38, '189', 'Voting in Houses, power of Houses to act notwithstanding vacancies and quorum', 'The power of the Legislature of a State to act notwithstanding any vacancy in the membership thereof, and any proceedings in the Legislature of a State shall not be invalid on the ground of vacancy or irregularity.', 'voting, houses, vacancies, quorum', '2025-02-28 05:00:05'),
(39, '190', 'Vacation of seats', 'No person shall be a member of both Houses of the Legislature of a State and rules shall be made by the Governor for giving effect to this provision.', 'vacation, seats, houses, legislature', '2025-02-28 05:00:05'),
(40, '191', 'Disqualifications for membership', 'A person shall be disqualified for being chosen as, and for being, a member of the Legislative Assembly or Legislative Council of a State if he holds any office of profit under the Government of India or the Government of any State.', 'disqualifications, membership, office of profit', '2025-02-28 05:00:05'),
(41, '192', 'Decision on questions as to disqualifications of members', 'If any question arises as to whether a member of a House of the Legislature of a State has become subject to any of the disqualifications, the question shall be referred to the Governor whose decision shall be final.', 'decision, disqualifications, governor, final', '2025-02-28 05:00:05'),
(42, '193', 'Penalty for sitting and voting before making oath or affirmation or when not qualified or when disqualified', 'If a person sits or votes as a member of the Legislative Assembly or the Legislative Council of a State before he has taken oath or made affirmation, or when he knows that he is not qualified or that he is disqualified, he shall be liable to a penalty.', 'penalty, sitting, voting, disqualification', '2025-02-28 05:00:05'),
(43, '194', 'Powers, privileges, etc., of the Houses of Legislatures and of the members and committees thereof', 'The powers, privileges and immunities of a House of the Legislature of a State, and of the members and the committees of a House of such Legislature.', 'powers, privileges, immunities, legislature', '2025-02-28 05:00:05'),
(44, '195', 'Salaries and allowances of members', 'Members of the Legislative Assembly and of the Legislative Council of a State shall be entitled to receive such salaries and allowances as may from time to time be determined by the Legislature of the State.', 'salaries, allowances, members, legislature', '2025-02-28 05:00:05'),
(45, '196', 'Provisions as to introduction and passing of Bills', 'A Bill may originate in either House of the Legislature of a State which has a Legislative Council.', 'bills, introduction, passing, legislature', '2025-02-28 05:00:05'),
(46, '197', 'Restriction on powers of Legislative Council as to Bills other than Money Bills', 'If a Bill which has been passed by the Legislative Assembly of a State and transmitted to the Legislative Council, the Legislative Council has limited powers to delay such Bills.', 'legislative council, powers, restriction, bills', '2025-02-28 05:00:05'),
(47, '198', 'Special procedure in respect of Money Bills', 'A Money Bill shall not be introduced in a Legislative Council.', 'money bills, special procedure, legislative council', '2025-02-28 05:00:05'),
(48, '199', 'Definition of \"Money Bills\"', 'A Bill shall be deemed to be a Money Bill if it contains only provisions dealing with taxation, borrowing, expenditure, etc.', 'money bills, definition, taxation, expenditure', '2025-02-28 05:00:05'),
(49, '200', 'Assent to Bills', 'When a Bill has been passed by the Legislative Assembly of a State or has been passed by the Legislative Assembly and the Legislative Council, it shall be presented to the Governor for assent.', 'bills, assent, governor, reservation', '2025-02-28 05:00:05'),
(50, '201', 'Bills reserved for consideration', 'When a Bill is reserved by a Governor for the consideration of the President, the President shall declare either that he assents to the Bill or that he withholds assent therefrom.', 'bills, reservation, president, assent', '2025-02-28 05:00:05'),
(51, '202', 'Annual financial statement', 'The Governor shall in respect of every financial year cause to be laid before the House or Houses of the Legislature of the State a statement of the estimated receipts and expenditure of the State for that year (the \"annual financial statement\" or Budget).', 'annual financial statement, budget, legislature', '2025-02-28 05:00:05'),
(52, '203', 'Procedure in Legislature with respect to estimates', 'The estimates of expenditure embodied in the annual financial statement shall show separately the sums required to meet expenditure charged upon the Consolidated Fund of the State and other expenditure.', 'estimates, procedure, legislature, consolidated fund', '2025-02-28 05:00:05'),
(53, '204', 'Appropriation Bills', 'No money shall be withdrawn from the Consolidated Fund of the State except under appropriation made by law.', 'appropriation bills, consolidated fund, withdrawal', '2025-02-28 05:00:05'),
(54, '205', 'Supplementary, additional or excess grants', 'The Governor shall cause to be presented to the Legislative Assembly of the State a statement of the estimated expenditure if additional grants are needed.', 'supplementary grants, additional grants, excess grants', '2025-02-28 05:00:05'),
(55, '206', 'Votes on account, votes of credit and exceptional grants', 'The Legislative Assembly shall have power to make any grant in advance for any part of the financial year pending the completion of the procedure prescribed in the Constitution.', 'votes on account, votes of credit, exceptional grants', '2025-02-28 05:00:05'),
(56, '207', 'Special provisions as to financial Bills', 'A Bill making provision for any of the matters specified in financial clauses shall not be introduced or moved except on the recommendation of the Governor.', 'financial bills, recommendation, governor', '2025-02-28 05:00:05'),
(57, '208', 'Power of Governor to promulgate Ordinances during recess of Legislature', 'If at any time, except when the Legislative Assembly of a State is in session, the Governor is satisfied that circumstances exist which render it necessary for him to take immediate action, he may promulgate such Ordinances as the circumstances appear to him to require.', 'governor, ordinances, legislature, promulgation', '2025-02-28 05:00:05'),
(58, '214', 'High Courts for States', 'There shall be a High Court for each State. The High Courts existing at the commencement of this Constitution shall be deemed to be the High Courts for the corresponding States.', 'high court, states, establishment', '2025-02-28 05:00:05'),
(59, '215', 'High Courts to be courts of record', 'Every High Court shall be a court of record and shall have all the powers of such a court including the power to punish for contempt of itself.', 'high court, court of record, contempt', '2025-02-28 05:00:05'),
(60, '216', 'Constitution of High Courts', 'Every High Court shall consist of a Chief Justice and such other Judges as the President may from time to time deem it necessary to appoint.', 'high court, constitution, chief justice, judges', '2025-02-28 05:00:05'),
(61, '217', 'Appointment and conditions of the office of a Judge of a High Court', 'Every Judge of a High Court shall be appointed by the President by warrant under his hand and seal after consultation with the Chief Justice of India, the Governor of the State, and the Chief Justice of the High Court.', 'judges, appointment, high court, conditions', '2025-02-28 05:00:05'),
(62, '218', 'Application of certain provisions relating to Supreme Court to High Courts', 'The provisions relating to the Supreme Court regarding contempt, salaries, etc. shall apply in relation to a High Court.', 'high court, supreme court, provisions', '2025-02-28 05:00:05'),
(63, '219', 'Oath or affirmation by Judges of High Courts', 'Every person appointed to be a Judge of a High Court shall, before he enters upon his office, make and subscribe an oath or affirmation according to the form set out for the purpose.', 'judges, high court, oath, affirmation', '2025-02-28 05:00:05'),
(64, '220', 'Restriction on practice after being a permanent Judge', 'No person who, after the commencement of this Constitution, has held office as a permanent Judge of a High Court shall plead or act in any court or before any authority in India except the Supreme Court and the other High Courts.', 'judges, high court, restriction, practice', '2025-02-28 05:00:05'),
(65, '221', 'Salaries, etc., of Judges', 'The Judges of each High Court shall be entitled to such salaries and allowances as may be determined by law.', 'judges, high court, salaries, allowances', '2025-02-28 05:00:05'),
(66, '222', 'Transfer of a Judge from one High Court to another', 'The President may, after consultation with the Chief Justice of India, transfer a Judge from one High Court to any other High Court.', 'judges, high court, transfer, president', '2025-02-28 05:00:05'),
(67, '223', 'Appointment of acting Chief Justice', 'When the office of Chief Justice of a High Court is vacant or when the Chief Justice is temporarily absent, the President may appoint a Judge of the Court to perform the duties of the Chief Justice.', 'acting chief justice, appointment, high court', '2025-02-28 05:00:05'),
(68, '224', 'Appointment of additional and acting Judges', 'The President may appoint qualified persons to be additional Judges of a High Court for a period not exceeding two years if a temporary increase in business or accumulated arrears require.', 'additional judges, acting judges, high court', '2025-02-28 05:00:05'),
(69, '225', 'Jurisdiction of existing High Courts', 'The jurisdiction of, and the law administered in, any existing High Court, and the respective powers of the Judges thereof shall be the same as immediately before the commencement of this Constitution.', 'high court, jurisdiction, powers, judges', '2025-02-28 05:00:05'),
(70, '226', 'Power of High Courts to issue certain writs', 'Every High Court shall have powers to issue directions, orders or writs including writs of habeas corpus, mandamus, prohibition, quo warranto and certiorari for the enforcement of Fundamental Rights and for any other purpose.', 'high court, writs, habeas corpus, mandamus, prohibition, quo warranto, certiorari', '2025-02-28 05:00:05'),
(71, '227', 'Power of superintendence over all courts by the High Court', 'Every High Court shall have superintendence over all courts and tribunals throughout the territories in relation to which it exercises jurisdiction.', 'high court, superintendence, courts, tribunals', '2025-02-28 05:00:05'),
(72, '228', 'Transfer of certain cases to High Court', 'If the High Court is satisfied that a case pending in a court subordinate to it involves a substantial question of law as to the interpretation of this Constitution, it shall withdraw the case to itself and dispose of it.', 'high court, transfer, cases, constitutional interpretation', '2025-02-28 05:00:05'),
(73, '229', 'Officers and servants and the expenses of High Courts', 'Appointments of officers and servants of a High Court shall be made by the Chief Justice of the Court or other Judge or officer as directed by the Chief Justice.', 'high court, officers, servants, expenses', '2025-02-28 05:00:05'),
(74, '230', 'Extension of jurisdiction of High Courts to Union territories', 'Parliament may by law extend the jurisdiction of a High Court to, or exclude the jurisdiction of a High Court from, any Union territory.', 'high court, jurisdiction, extension, union territories', '2025-02-28 05:00:05'),
(75, '231', 'Establishment of a common High Court for two or more States', 'Parliament may by law establish a common High Court for two or more States or for two or more States and a Union territory.', 'common high court, establishment, states', '2025-02-28 05:00:05'),
(76, '233', 'Appointment of district judges', 'Appointments of persons to be district judges in a State shall be made by the Governor of the State in consultation with the High Court.', 'district judges, appointment, governor, high court', '2025-02-28 05:00:05'),
(77, '234', 'Recruitment of persons other than district judges to the judicial service', 'Appointments of persons other than district judges to the judicial service of a State shall be made by the Governor in accordance with rules made by him in consultation with the High Court and the State Public Service Commission.', 'judicial service, recruitment, governor, high court', '2025-02-28 05:00:05'),
(78, '235', 'Control over subordinate courts', 'The control over district courts and courts subordinate thereto including the posting and promotion of, and the grant of leave to, persons belonging to the judicial service of a State shall be vested in the High Court.', 'subordinate courts, control, high court', '2025-02-28 05:00:05'),
(79, '236', 'Interpretation', 'In this Chapter, the expression \"district judge\" includes judge of a city civil court, additional district judge, and other specified judicial officers.', 'district judge, interpretation, judicial officers', '2025-02-28 05:00:05'),
(80, '237', 'Application of the provisions of this Chapter to certain class or classes of magistrates', 'The Governor may direct that the foregoing provisions of this Chapter shall apply in relation to any class or classes of magistrates as they apply in relation to persons appointed to the judicial service of the State.', 'magistrates, application, provisions', '2025-02-28 05:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `constitution_part9_relations`
--

CREATE TABLE `constitution_part9_relations` (
  `sno` int(10) NOT NULL,
  `article_no` varchar(20) NOT NULL,
  `article_definition` varchar(500) DEFAULT NULL,
  `article_description` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `article_added` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constitution_part9_relations`
--

INSERT INTO `constitution_part9_relations` (`sno`, `article_no`, `article_definition`, `article_description`, `keywords`, `article_added`) VALUES
(1, 'Article 245(1)', 'Territorial extent of laws made by Parliament', 'Parliament may make laws for the whole or any part of the territory of India.', 'legislative power, territorial jurisdiction, parliament', 'Original Constitution of India, 1950'),
(2, 'Article 245(2)', 'Territorial extent of laws made by State Legislatures', 'State Legislatures may make laws for the whole or any part of the State.', 'state legislature, territorial jurisdiction', 'Original Constitution of India, 1950'),
(3, 'Article 246(1)', 'Union List Legislative Powers', 'Parliament has exclusive power to make laws on matters in the Union List.', 'union list, parliamentary legislation', 'Original Constitution of India, 1950'),
(4, 'Article 246(2)', 'State List Legislative Powers', 'State Legislatures have exclusive power to make laws on matters in the State List.', 'state list, state legislation', 'Original Constitution of India, 1950'),
(5, 'Article 246(3)', 'Concurrent List Legislative Powers', 'Both Parliament and State Legislatures can make laws on matters in the Concurrent List.', 'concurrent list, shared legislative power', 'Original Constitution of India, 1950'),
(6, 'Article 246(4)', 'Precedence of Parliamentary Laws', 'In case of conflict between Parliamentary and State laws in the Concurrent List, Parliamentary law prevails.', 'legislative hierarchy, law supremacy', 'Original Constitution of India, 1950'),
(7, 'Article 247', 'Power of Parliament to create additional courts', 'Parliament may by law provide for the establishment of additional courts for better administration of laws made by Parliament.', 'judicial system, court establishment, parliamentary power', 'Original Constitution of India, 1950'),
(8, 'Article 248', 'Residuary Legislative Powers', 'Parliament has exclusive power to make laws on matters not listed in the Concurrent List or State List.', 'residuary powers, legislative supremacy, parliament', 'Original Constitution of India, 1950'),
(9, 'Article 249(1)', 'National Interest Legislation', 'Rajya Sabha can pass a resolution empowering Parliament to make laws on State List matters in national interest.', 'national interest, legislative override, rajya sabha', 'Original Constitution of India, 1950'),
(10, 'Article 250(1)', 'Emergency Legislation', 'During national emergency, Parliament can make laws on any matter in the State List.', 'national emergency, legislative powers, parliament supremacy', 'Original Constitution of India, 1950'),
(11, 'Article 251', 'Inconsistency between Parliamentary and State Laws', 'Laws made by Parliament under Articles 249 and 250 shall prevail over State laws.', 'legislative precedence, conflict resolution, law hierarchy', 'Original Constitution of India, 1950'),
(12, 'Article 252(1)', 'Inter-State Legislation by Consent', 'Parliament can make laws for two or more States by their legislative consent.', 'inter-state legislation, state consent, parliamentary power', 'Original Constitution of India, 1950'),
(13, 'Article 253', 'International Agreements Implementation', 'Parliament has the power to make laws to implement international treaties and agreements.', 'international law, treaty implementation, global commitments', 'Original Constitution of India, 1950'),
(14, 'Article 254(1)', 'Inconsistency between Parliamentary and State Laws', 'In case of conflict, Presidential assent can validate State law partially or wholly.', 'legislative conflict, law supremacy, constitutional hierarchy', 'Original Constitution of India, 1950'),
(15, 'Article 255', 'Requirements of Recommendations and Sanctions', 'Recommendations and previous sanctions are considered matters of procedure in legislative processes.', 'legislative procedure, constitutional formalities, law-making', 'Original Constitution of India, 1950'),
(16, 'Article 256', 'State Obligations to Union', 'States must comply with laws made by Parliament and executive directions of the Union.', 'state obligations, constitutional compliance, union directives', 'Original Constitution of India, 1950'),
(17, 'Article 257', 'Union Control over States', 'Defines the Union\'s power to give directions to States regarding the exercise of their executive power.', 'union control, state governance, executive directions', 'Original Constitution of India, 1950'),
(18, 'Article 258', 'Power of Union to Confer Powers on States', 'Union can entrust executive functions to States through mutual agreement.', 'inter-governmental cooperation, executive powers, state functions', 'Original Constitution of India, 1950'),
(19, 'Article 259', 'Union Direction on State Executive Functions', 'Union can provide specific directions about the performance of executive functions in States.', 'executive guidance, state administration, union oversight', 'Original Constitution of India, 1950'),
(20, 'Article 260', 'Administrative Arrangements', 'Provisions for administrative cooperation between the Union and States.', 'administrative cooperation, inter-governmental relations', 'Original Constitution of India, 1950'),
(21, 'Article 261', 'Public Acts, Records, and Judicial Proceedings', 'Mutual recognition of public acts, records, and judicial proceedings between States and the Union.', 'judicial recognition, state records, public documents', 'Original Constitution of India, 1950'),
(22, 'Article 262', 'Inter-State Water Disputes', 'Parliament can make laws for resolving water-related disputes between States.', 'inter-state water disputes, river valley conflicts, legal resolution', 'Original Constitution of India, 1950'),
(23, 'Article 263', 'Inter-State Council', 'Establishes provisions for creating an Inter-State Council to investigate and discuss subjects of common interest.', 'inter-state cooperation, council establishment, state relations', 'Original Constitution of India, 1950');

-- --------------------------------------------------------

--
-- Table structure for table `constitution_part10`
--

CREATE TABLE `constitution_part10` (
  `SNo` int(11) NOT NULL,
  `ArticleNo` varchar(50) NOT NULL,
  `ArticleDefinition` varchar(255) NOT NULL,
  `ArticleDescription` text NOT NULL,
  `Keywords` varchar(255) DEFAULT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constitution_part10`
--

INSERT INTO `constitution_part10` (`SNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, '244', 'Administration of Scheduled Areas and Tribal Areas', 'Provides for the administration of Scheduled Areas and Tribal Areas. The President may declare any area to be a Scheduled Area. The Governor of a state with Scheduled Areas has special responsibility regarding administration of these areas.', 'scheduled areas, administration, governor, fifth schedule', '2025-03-01 04:37:44'),
(2, '244A', 'Formation of an autonomous State comprising certain tribal areas in Assam and creation of local Legislature or Council of Ministers or both therefor', 'Parliament may, by law, form an autonomous State comprising certain tribal areas in Assam and create a local Legislature or Council of Ministers or both. This was added by the Constitution (Twenty-second Amendment) Act, 1969 to allow for the creation of an autonomous state within Assam.', 'autonomous state, Assam, tribal areas, local legislature', '2025-03-01 04:37:44'),
(3, 'Fifth Schedule', 'Provisions as to the Administration and Control of Scheduled Areas and Scheduled Tribes', 'Details the provisions for administration of Scheduled Areas and Scheduled Tribes. It provides for the establishment of Tribes Advisory Council in states with Scheduled Areas. The Governor has special powers regarding application of laws to Scheduled Areas and can make regulations for peace and good governance.', 'scheduled areas, scheduled tribes, tribes advisory council, governor powers', '2025-03-01 04:37:44'),
(4, 'Fifth Schedule Para 1', 'Interpretation', 'Defines the terms \"State\", \"Scheduled Areas\" and \"tribe\" for the purposes of the Fifth Schedule.', 'definitions, interpretations, scheduled areas', '2025-03-01 04:37:44'),
(5, 'Fifth Schedule Para 2', 'Executive power of a State in Scheduled Areas', 'The executive power of a State extends to the Scheduled Areas therein, subject to the provisions of the Fifth Schedule.', 'executive power, state power, scheduled areas', '2025-03-01 04:37:44'),
(6, 'Fifth Schedule Para 3', 'Report by the Governor to the President regarding the administration of Scheduled Areas', 'The Governor of each State having Scheduled Areas shall annually, or whenever required by the President, report to the President regarding the administration of the Scheduled Areas in that State.', 'governor report, president, annual report, administration', '2025-03-01 04:37:44'),
(7, 'Fifth Schedule Para 4', 'Tribes Advisory Council', 'In each State having Scheduled Areas, a Tribes Advisory Council shall be established. The Council shall consist of not more than twenty members, of whom, three-fourths shall be representatives of the Scheduled Tribes in the State Legislative Assembly.', 'tribes advisory council, tribal representatives, council composition', '2025-03-01 04:37:44'),
(8, 'Fifth Schedule Para 5', 'Law applicable to Scheduled Areas', 'The Governor may direct that any particular Act of Parliament or of the Legislature of the State shall not apply to a Scheduled Area or shall apply subject to exceptions or modifications. The Governor may also make regulations for peace and good governance of any area in a State which is a Scheduled Area.', 'governor powers, regulations, law application, modifications', '2025-03-01 04:37:44'),
(9, 'Fifth Schedule Para 6', 'Amendment of the Schedule', 'Parliament may amend the Fifth Schedule by way of addition, variation or repeal of any of its provisions.', 'amendment, parliament powers, constitutional change', '2025-03-01 04:37:44'),
(10, 'Sixth Schedule', 'Provisions as to the Administration of Tribal Areas in the States of Assam, Meghalaya, Tripura and Mizoram', 'Contains provisions for the administration of tribal areas in the states of Assam, Meghalaya, Tripura and Mizoram. It provides for autonomous districts and autonomous regions, and district councils and regional councils with legislative, judicial, executive and financial powers.', 'tribal areas, autonomous districts, district councils, regional councils, Assam, Meghalaya, Tripura, Mizoram', '2025-03-01 04:37:44'),
(11, 'Sixth Schedule Para 1', 'Autonomous districts and autonomous regions', 'Provides for the formation of autonomous districts in tribal areas of Assam, Meghalaya, Tripura and Mizoram. The Governor may divide areas into autonomous regions.', 'autonomous districts, tribal areas, governor powers, autonomous regions', '2025-03-01 04:37:44'),
(12, 'Sixth Schedule Para 2', 'Constitution of District Councils and Regional Councils', 'Each autonomous district shall have a District Council consisting of not more than 30 members, of whom not more than four shall be nominated by the Governor and the rest shall be elected. Each autonomous region shall have a Regional Council.', 'district council, regional council, elections, council composition', '2025-03-01 04:37:44'),
(13, 'Sixth Schedule Para 3', 'Powers of the District Councils and Regional Councils to make laws', 'The District Council and the Regional Council have power to make laws with respect to land, forests, use of water, cultivation, inheritance of property, social customs, village or town administration, etc.', 'legislative powers, customary law, land management, forest management', '2025-03-01 04:37:44'),
(14, 'Sixth Schedule Para 4', 'Administration of justice in autonomous districts and autonomous regions', 'The District Council and Regional Council may constitute village councils or courts for the trial of suits and cases between the parties all of whom belong to Scheduled Tribes.', 'tribal courts, justice administration, village councils, dispute resolution', '2025-03-01 04:37:44'),
(15, 'Sixth Schedule Para 5', 'Conferment of powers under the Code of Civil Procedure and the Code of Criminal Procedure on the District Council and Regional Council', 'The Governor may confer on the District Council or the Regional Council powers under the Code of Civil Procedure and the Code of Criminal Procedure.', 'civil procedure, criminal procedure, judicial powers', '2025-03-01 04:37:44'),
(16, 'Sixth Schedule Para 6', 'Powers of the District Council to establish primary schools, etc.', 'The District Council may establish, construct, or manage primary schools, dispensaries, markets, cattle pounds, ferries, fisheries, roads, road transport and waterways.', 'education, healthcare, infrastructure, public facilities', '2025-03-01 04:37:44'),
(17, 'Sixth Schedule Para 7', 'District and Regional Funds', 'There shall be constituted for each autonomous district, a District Fund and for each autonomous region, a Regional Fund to which shall be credited all moneys received by the District Council or the Regional Council.', 'district fund, regional fund, financial management, revenue', '2025-03-01 04:37:44'),
(18, 'Sixth Schedule Para 8', 'Powers to assess and collect land revenue and to impose taxes', 'The District Council for an autonomous district shall have the power to assess and collect revenue in respect of lands within such district and to levy taxes.', 'taxation, land revenue, fiscal powers, revenue collection', '2025-03-01 04:37:44'),
(19, 'Sixth Schedule Para 9', 'Licenses or leases for the purpose of prospecting for, or extraction of, minerals', 'The Governor may make rules for the grant of licenses or leases for the purpose of prospecting for, or the extraction of, minerals within an autonomous district or autonomous region.', 'mineral rights, mining leases, prospecting licenses, natural resources', '2025-03-01 04:37:44'),
(20, 'Sixth Schedule Para 10', 'Share of royalties', 'The District Council shall be entitled to a share of the royalties accruing each year from licenses or leases for the purpose of prospecting for, or the extraction of, minerals granted by the Government.', 'mineral royalties, revenue sharing, mining benefits', '2025-03-01 04:37:44'),
(21, 'Sixth Schedule Para 11', 'Power of District Council to make regulations for the control of money-lending and trading by non-tribals', 'The District Council may make regulations for the regulation and control of money-lending or trading within the district by persons other than Scheduled Tribes.', 'money-lending, trading regulation, non-tribal control, economic protection', '2025-03-01 04:37:44'),
(22, 'Sixth Schedule Para 12', 'Application of Acts of Parliament and of the Legislature of the State to autonomous districts and autonomous regions', 'Acts of Parliament or of the Legislature of the State shall not apply to autonomous districts and autonomous regions unless the District Council or the Regional Council so directs.', 'law application, legislative autonomy, legal exemptions', '2025-03-01 04:37:44'),
(23, 'Sixth Schedule Para 13', 'Estimated receipts and expenditure to be shown separately in the annual financial statement', 'The estimated receipts and expenditure pertaining to autonomous districts shall be shown separately in the annual financial statement of the State.', 'financial statement, budget, fiscal transparency, expenditure', '2025-03-01 04:37:44'),
(24, 'Sixth Schedule Para 14', 'Appointment of Commission to examine and report on the administration of autonomous districts and autonomous regions', 'The Governor may at any time appoint a Commission to examine and report on any matter relating to the administration of the autonomous districts or regions.', 'commission, administrative review, governance assessment', '2025-03-01 04:37:44'),
(25, 'Sixth Schedule Para 15', 'Annulment or suspension of acts and resolutions of District and Regional Councils', 'The Governor may annul or suspend any act or resolution of a District Council or a Regional Council if he considers it likely to endanger the safety of India or is prejudicial to public order.', 'governor powers, council oversight, annulment powers, public order', '2025-03-01 04:37:44'),
(26, 'Sixth Schedule Para 16', 'Dissolution of a District or a Regional Council', 'The Governor may dissolve a District or a Regional Council and assume to himself all or any of the functions or powers thereof.', 'dissolution powers, governor intervention, council suspension', '2025-03-01 04:37:44'),
(27, 'Sixth Schedule Para 17', 'Exclusion of areas from autonomous districts for creating Scheduled Areas', 'The President may exclude any area from an autonomous district if he is satisfied it would be in the public interest to do so.', 'area exclusion, president powers, territorial modification', '2025-03-01 04:37:44'),
(28, 'Sixth Schedule Para 18', 'Transitional provisions', 'Provides for the transition when a new autonomous district or region is formed or when territories are transferred between two autonomous districts.', 'transition, territorial changes, administrative continuity', '2025-03-01 04:37:44'),
(29, 'Sixth Schedule Para 19', 'Transitional provisions for the first constitution of District Councils and Regional Councils', 'Special provisions for the first constitution of District Councils and Regional Councils after the commencement of the Constitution.', 'initial setup, council formation, transitional governance', '2025-03-01 04:37:44'),
(30, 'Sixth Schedule Para 20', 'Tribal areas in Meghalaya, Tripura and Mizoram', 'Special provisions for tribal areas in Meghalaya, Tripura and Mizoram, outlining their administrative structures and governance systems.', 'Meghalaya, Tripura, Mizoram, tribal governance', '2025-03-01 04:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `constitution_part11`
--

CREATE TABLE `constitution_part11` (
  `SNo` int(11) NOT NULL,
  `ArticleNo` varchar(50) NOT NULL,
  `ArticleDefinition` varchar(255) NOT NULL,
  `ArticleDescription` text NOT NULL,
  `Keywords` varchar(255) DEFAULT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constitution_part11`
--

INSERT INTO `constitution_part11` (`SNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, '245', 'Extent of laws made by Parliament and by the Legislatures of States', 'Parliament may make laws for the whole or any part of the territory of India, and the Legislature of a State may make laws for the whole or any part of the State. No law made by Parliament shall be deemed to be invalid on the ground that it would have extra-territorial operation.', 'legislative powers, territory, parliament, state legislature, jurisdiction', '2025-03-01 04:40:37'),
(2, '246', 'Subject-matter of laws made by Parliament and by the Legislatures of States', 'Parliament has exclusive power to make laws with respect to any of the matters enumerated in List I (Union List). Parliament and State Legislature have power to make laws with respect to any of the matters enumerated in List III (Concurrent List). State Legislature has exclusive power to make laws with respect to matters enumerated in List II (State List).', 'union list, state list, concurrent list, legislative powers, exclusive powers', '2025-03-01 04:40:37'),
(3, '246A', 'Special provision with respect to goods and services tax', 'Parliament and State Legislatures have power to make laws with respect to goods and services tax. Parliament has exclusive power to make laws with respect to inter-State trade or commerce.', 'GST, goods and services tax, taxation, inter-state commerce', '2025-03-01 04:40:37'),
(4, '247', 'Power of Parliament to provide for the establishment of certain additional courts', 'Parliament may by law provide for the establishment of any additional courts for the better administration of laws made by Parliament or of any existing laws with respect to a matter enumerated in the Union List.', 'additional courts, judicial administration, union list', '2025-03-01 04:40:37'),
(5, '248', 'Residuary powers of legislation', 'Parliament has exclusive power to make any law with respect to any matter not enumerated in the Concurrent List or State List (residuary powers).', 'residuary powers, exclusive powers, parliament, unenumerated matters', '2025-03-01 04:40:37'),
(6, '249', 'Power of Parliament to legislate with respect to a matter in the State List in the national interest', 'Parliament may make laws with respect to any matter in the State List if the Council of States (Rajya Sabha) declares by resolution supported by not less than two-thirds of members present and voting that it is necessary in the national interest.', 'national interest, state list, parliamentary override, Rajya Sabha, two-thirds majority', '2025-03-01 04:40:37'),
(7, '250', 'Power of Parliament to legislate with respect to any matter in the State List if a Proclamation of Emergency is in operation', 'Parliament has power to make laws for the whole or any part of India with respect to any matter enumerated in the State List while a Proclamation of Emergency is in operation.', 'emergency powers, state list, parliamentary override, emergency proclamation', '2025-03-01 04:40:37'),
(8, '251', 'Inconsistency between laws made by Parliament under articles 249 and 250 and laws made by the Legislatures of States', 'If there is inconsistency between laws made by Parliament under Articles 249 and 250 and laws made by State Legislatures, the Parliamentary law shall prevail to the extent of the inconsistency. After the Parliamentary law ceases to have effect, the State law that was suspended will revive.', 'legislative inconsistency, parliamentary supremacy, suspension of state laws', '2025-03-01 04:40:37'),
(9, '252', 'Power of Parliament to legislate for two or more States by consent and adoption of such legislation by any other State', 'If the Legislatures of two or more States pass resolutions requesting Parliament to make laws on a matter in the State List, Parliament may make laws regulating that matter. Such laws can be adopted subsequently by other States through similar resolutions.', 'state consent, parliamentary legislation, voluntary adoption, state list', '2025-03-01 04:40:37'),
(10, '253', 'Legislation for giving effect to international agreements', 'Parliament has power to make any law for the whole or any part of India for implementing any treaty, agreement or convention with any other country or any decision made at any international conference, association or other body.', 'international treaties, agreements, international law, implementation', '2025-03-01 04:40:37'),
(11, '254', 'Inconsistency between laws made by Parliament and laws made by the Legislatures of States', 'If there is inconsistency between laws made by Parliament and laws made by State Legislatures on subjects in the Concurrent List, the Parliamentary law shall prevail. However, if a State law has received the President\'s assent, it shall prevail in that State over the Parliamentary law to the extent of the inconsistency.', 'legislative inconsistency, parliamentary supremacy, presidential assent, concurrent list', '2025-03-01 04:40:37'),
(12, '255', 'Requirements as to recommendations and previous sanctions to be regarded as matters of procedure only', 'No law made by Parliament or a State Legislature shall be deemed invalid merely on the ground that some recommendation or previous sanction required under the Constitution was not given.', 'procedural requirements, legislative validity, recommendations, sanctions', '2025-03-01 04:40:37'),
(13, '256', 'Obligation of States and the Union', 'The executive power of every State shall be so exercised as to ensure compliance with the laws made by Parliament and any existing laws which apply in that State, and the executive power of the Union shall extend to the giving of such directions to a State as may appear to the Government of India to be necessary for that purpose.', 'executive powers, compliance, union directions, state obligations', '2025-03-01 04:40:37'),
(14, '257', 'Control of the Union over States in certain cases', 'The executive power of every State shall be so exercised as not to impede or prejudice the exercise of the executive power of the Union. The Union may give directions to a State for construction and maintenance of communications of military importance, and for protection of railways within the State.', 'union control, military communications, railways, executive power', '2025-03-01 04:40:37'),
(15, '257A', 'Assistance to States by deployment of armed forces or other forces of the Union [Repealed]', 'This article was inserted by the 42nd Amendment and later repealed by the 44th Amendment. It provided for assistance to States by deployment of armed forces or other forces of the Union to deal with situations affecting public order.', 'armed forces, public order, state assistance, repealed provision', '2025-03-01 04:40:37'),
(16, '258', 'Power of the Union to confer powers, etc., on States in certain cases', 'The President may, with the consent of the Government of a State, entrust either conditionally or unconditionally to that Government or to its officers functions in relation to any matter to which the executive power of the Union extends.', 'delegation of powers, union functions, state officers, presidential entrustment', '2025-03-01 04:40:37'),
(17, '258A', 'Power of the States to entrust functions to the Union', 'The Governor of a State may, with the consent of the Government of India, entrust either conditionally or unconditionally to that Government or to its officers functions in relation to any matter to which the executive power of the State extends.', 'delegation of powers, state functions, union officers, governor entrustment', '2025-03-01 04:40:37'),
(18, '259', 'Armed Forces in States in Part B of the First Schedule [Repealed]', 'This article was repealed by the 7th Amendment Act, 1956. It originally dealt with the armed forces in States which were formerly princely states.', 'armed forces, Part B states, princely states, repealed provision', '2025-03-01 04:40:37'),
(19, '260', 'Jurisdiction of the Union in relation to territories outside India', 'The Government of India may by agreement with the Government of any territory not being part of the territory of India undertake any executive, legislative or judicial functions vested in the Government of such territory.', 'extra-territorial jurisdiction, agreements, foreign territories, delegation', '2025-03-01 04:40:37'),
(20, '261', 'Public acts, records and judicial proceedings', 'Full faith and credit shall be given throughout the territory of India to public acts, records and judicial proceedings of the Union and of every State. The manner in which such acts, records and proceedings shall be proved and their effect determined shall be as provided by law made by Parliament.', 'public records, judicial proceedings, credit, inter-state recognition', '2025-03-01 04:40:37'),
(21, '262', 'Adjudication of disputes relating to waters of inter-State rivers or river valleys', 'Parliament may by law provide for the adjudication of any dispute or complaint with respect to the use, distribution or control of the waters of, or in, any inter-State river or river valley. Parliament may provide that neither the Supreme Court nor any other court shall exercise jurisdiction in respect of any such dispute or complaint.', 'water disputes, inter-state rivers, tribunals, jurisdiction exclusion', '2025-03-01 04:40:37'),
(22, '263', 'Provisions with respect to an inter-State Council', 'The President may establish an Inter-State Council charged with the duty of inquiring into and advising upon disputes between States, investigating and discussing subjects of common interest, and making recommendations for the better coordination of policy and action.', 'inter-state council, disputes, coordination, presidential establishment', '2025-03-01 04:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `indianconstitution_part8`
--

CREATE TABLE `indianconstitution_part8` (
  `SNo` int(11) NOT NULL,
  `ArticleNo` varchar(10) DEFAULT NULL,
  `ArticleDefinition` varchar(200) DEFAULT NULL,
  `ArticleDescription` text DEFAULT NULL,
  `Keywords` varchar(255) DEFAULT NULL,
  `DateAdded` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `indianconstitution_part8`
--

INSERT INTO `indianconstitution_part8` (`SNo`, `ArticleNo`, `ArticleDefinition`, `ArticleDescription`, `Keywords`, `DateAdded`) VALUES
(1, '239', 'Administration of Union Territories', 'Every Union Territory shall be administered by the President through an administrator appointed by him. The President may appoint the Governor of a State as the administrator of an adjoining Union Territory.', 'administrator, president, governance, appointment', '1950-01-26'),
(2, '239A', 'Creation of local Legislatures or Council of Ministers', 'Parliament may by law create for certain Union Territories a body to function as Legislature and/or a Council of Ministers. Specifically applicable to Puducherry.', 'legislature, council of ministers, puducherry, local government', '1962-12-28'),
(3, '239AA', 'Special provisions with respect to Delhi', 'Specially designates Delhi as the National Capital Territory with its own Legislature and Council of Ministers while maintaining special powers for the Lieutenant Governor. Defines the structure and powers of Delhi\'s government.', 'delhi, national capital territory, legislative assembly, lieutenant governor', '1991-12-01'),
(4, '239AB', 'Provision in case of failure of constitutional machinery', 'If the administration of the National Capital Territory cannot be carried on in accordance with Article 239AA, the President may take appropriate action including suspension of the Legislative Assembly.', 'constitutional failure, president rule, delhi, suspension', '1991-12-01'),
(5, '239B', 'Power of administrator to promulgate Ordinances', 'During recess of Legislature, the administrator may promulgate Ordinances if circumstances require immediate action. Such Ordinances have the same force as acts of Legislature.', 'ordinance, administrator powers, emergency provisions, legislation', '1962-12-28'),
(6, '240', 'Power of President to make regulations for certain Union territories', 'The President may make regulations for Union Territories including Andaman and Nicobar Islands, Lakshadweep, Dadra and Nagar Haveli, and Daman and Diu. These regulations have the same force as acts of Parliament.', 'regulations, president powers, union territories, administration', '1950-01-26'),
(7, '241', 'High Courts for Union territories', 'Parliament may by law constitute a High Court for a Union Territory or declare any court in any such territory to be a High Court. Defines the jurisdiction and powers of such High Courts.', 'high court, judiciary, union territories, jurisdiction', '1950-01-26'),
(8, '242', 'Coorg [Repealed]', 'This article was repealed by the Constitution (Seventh Amendment) Act, 1956. It originally contained special provisions for the administration of Coorg (now Kodagu, Karnataka).', 'coorg, kodagu, repealed article, historical provision', '1950-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `part18_emergency_provisions`
--

CREATE TABLE `part18_emergency_provisions` (
  `s_no` int(11) NOT NULL,
  `article_no` varchar(10) NOT NULL,
  `article_definition` varchar(255) NOT NULL,
  `article_description` text NOT NULL,
  `keywords` text DEFAULT NULL,
  `article_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `part18_emergency_provisions`
--

INSERT INTO `part18_emergency_provisions` (`s_no`, `article_no`, `article_definition`, `article_description`, `keywords`, `article_date`) VALUES
(1, '352(1)', 'Proclamation of Emergency', 'If the President is satisfied that a grave emergency exists whereby the security of India or any part thereof is threatened by war, external aggression, or armed rebellion, they may proclaim a state of emergency.', 'national emergency, war, external aggression, armed rebellion, president powers', '26 January 1950'),
(2, '352(2)', 'Proclamation Operation and Revocation', 'A Proclamation of Emergency may be revoked by a subsequent Proclamation and shall be laid before each House of Parliament.', 'revocation, parliament approval, emergency powers', '26 January 1950'),
(3, '352(3)', 'Parliamentary Approval', 'Proclamation must be approved by both Houses of Parliament within one month, otherwise it ceases to operate.', 'parliamentary approval, time limit, emergency validity', '26 January 1950'),
(4, '352(4)', 'Special Majority Requirement', 'Proclamation must be approved by a majority of total membership and not less than two-thirds of members present and voting.', 'special majority, voting requirements, parliamentary procedure', '26 January 1950'),
(5, '353(a)', 'Executive Power Extension', 'Union executive power extends to giving directions to any State as to the manner in which its executive power is to be exercised.', 'executive power, union control, state directions', '26 January 1950'),
(6, '353(b)', 'Parliamentary Legislative Power', 'Parliament gets power to make laws on any matter in the State List during emergency.', 'legislative power, parliament authority, state subjects', '26 January 1950'),
(7, '354', 'Revenue Distribution', 'President may modify rules of revenue distribution between Union and States during emergency.', 'revenue distribution, financial provisions, emergency finance', '26 January 1950'),
(8, '355', 'Union\'s Duty to States', 'Union must protect States against external aggression and internal disturbance and ensure constitutional governance.', 'state protection, external aggression, internal disturbance', '26 January 1950'),
(9, '356(1)', 'President\'s Rule', 'President may assume State government functions if satisfied that constitutional machinery has failed in State.', 'presidents rule, state failure, constitutional breakdown', '26 January 1950'),
(10, '356(2)', 'Duration of President\'s Rule', 'Proclamation ceases after two months unless approved by Parliament.', 'time limit, parliamentary approval, presidents rule duration', '26 January 1950'),
(11, '356(3)', 'Parliamentary Approval for Extension', 'President\'s Rule can be extended for up to six months at a time with Parliamentary approval.', 'extension period, parliamentary approval, time limit', '26 January 1950'),
(12, '356(4)', 'Maximum Duration', 'President\'s Rule cannot exceed three years except in special circumstances.', 'maximum duration, time limit, special circumstances', '26 January 1950'),
(13, '357(1)', 'Parliamentary Legislative Powers', 'Parliament can confer powers of State legislature on President during President\'s Rule.', 'legislative powers, delegation, presidents powers', '26 January 1950'),
(14, '357(2)', 'President\'s Law-Making Power', 'President may authorize expenditure from State Consolidated Fund pending Parliament\'s approval.', 'financial powers, state funds, emergency expenditure', '26 January 1950'),
(15, '358', 'Suspension of Article 19', 'Article 19 (fundamental rights) automatically suspended during emergency proclaimed on grounds of war or external aggression.', 'fundamental rights, suspension, article 19', '26 January 1950'),
(16, '359(1)', 'Suspension of Fundamental Rights', 'President may suspend enforcement of specified fundamental rights during emergency.', 'fundamental rights, suspension, presidential order', '26 January 1950'),
(17, '359(1A)', 'Rights Not Suspendable', 'Articles 20 and 21 cannot be suspended during emergency.', 'fundamental rights, restrictions, protection', '26 January 1950'),
(18, '359(2)', 'Suspension Duration', 'Suspension order expires with emergency proclamation unless different duration specified.', 'suspension period, duration, time limit', '26 January 1950'),
(19, '360(1)', 'Financial Emergency Declaration', 'President may declare financial emergency if financial stability or credit of India threatened.', 'financial emergency, economic crisis, presidential powers', '26 January 1950'),
(20, '360(2)', 'Parliamentary Approval Required', 'Financial emergency proclamation must be approved by Parliament within two months.', 'parliamentary approval, time limit, financial emergency', '26 January 1950'),
(21, '360(3)', 'Financial Directions', 'Union may give financial directions to States during financial emergency.', 'financial directions, state compliance, union control', '26 January 1950'),
(22, '360(4)', 'Salary Reduction', 'Orders for reduction of salaries and allowances can be issued during financial emergency.', 'salary reduction, financial measures, emergency powers', '26 January 1950');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `citizenship`
--
ALTER TABLE `citizenship`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `constitutionarticles`
--
ALTER TABLE `constitutionarticles`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `constitutionpart12`
--
ALTER TABLE `constitutionpart12`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `constitutionpart13`
--
ALTER TABLE `constitutionpart13`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `constitutionpart14`
--
ALTER TABLE `constitutionpart14`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `constitutionpart15`
--
ALTER TABLE `constitutionpart15`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `constitutionpart16`
--
ALTER TABLE `constitutionpart16`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `constitutionpart17`
--
ALTER TABLE `constitutionpart17`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `constitution_articles`
--
ALTER TABLE `constitution_articles`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `constitution_part1`
--
ALTER TABLE `constitution_part1`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `constitution_part2`
--
ALTER TABLE `constitution_part2`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `constitution_part3`
--
ALTER TABLE `constitution_part3`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `constitution_part4`
--
ALTER TABLE `constitution_part4`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `constitution_part6`
--
ALTER TABLE `constitution_part6`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `constitution_part9_relations`
--
ALTER TABLE `constitution_part9_relations`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `article_no` (`article_no`);

--
-- Indexes for table `constitution_part10`
--
ALTER TABLE `constitution_part10`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `constitution_part11`
--
ALTER TABLE `constitution_part11`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `indianconstitution_part8`
--
ALTER TABLE `indianconstitution_part8`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `part18_emergency_provisions`
--
ALTER TABLE `part18_emergency_provisions`
  ADD PRIMARY KEY (`s_no`),
  ADD UNIQUE KEY `article_no` (`article_no`);
ALTER TABLE `part18_emergency_provisions` ADD FULLTEXT KEY `idx_keywords` (`keywords`);
ALTER TABLE `part18_emergency_provisions` ADD FULLTEXT KEY `idx_article_definition` (`article_definition`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `constitutionarticles`
--
ALTER TABLE `constitutionarticles`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `constitutionpart12`
--
ALTER TABLE `constitutionpart12`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `constitutionpart13`
--
ALTER TABLE `constitutionpart13`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `constitutionpart14`
--
ALTER TABLE `constitutionpart14`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `constitution_articles`
--
ALTER TABLE `constitution_articles`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `constitution_part1`
--
ALTER TABLE `constitution_part1`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `constitution_part3`
--
ALTER TABLE `constitution_part3`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `constitution_part4`
--
ALTER TABLE `constitution_part4`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `constitution_part6`
--
ALTER TABLE `constitution_part6`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `constitution_part9_relations`
--
ALTER TABLE `constitution_part9_relations`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `constitution_part10`
--
ALTER TABLE `constitution_part10`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `constitution_part11`
--
ALTER TABLE `constitution_part11`
  MODIFY `SNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `part18_emergency_provisions`
--
ALTER TABLE `part18_emergency_provisions`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
