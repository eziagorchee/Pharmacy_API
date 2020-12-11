-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2020 at 01:47 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--
-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `bloodgroup` varchar(50) NOT NULL,
  `genotype` varchar(50) NOT NULL,
  `temperature` varchar(50) NOT NULL,
  `heartrate` varchar(50) NOT NULL,
  `bloodpressure` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `first_name`, `last_name`, `age`, `weight`, `height`, `gender`, `address`, `bloodgroup`, `genotype`, `temperature`, `heartrate`, `bloodpressure`, `username`, `password`, `created`) VALUES
(1, 'Osemwingie', 'Oshodin', 22, 63, 185, 'male', 'number 35, aderemi road', 'O+', 'AA', '34', '60bpm', '40mmhg', 'Ogkt', 'd068536cd1d61653cbde4cf5a58dff35', '2020-12-11 09:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(48) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(609) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category_id`, `price`, `quantity`, `created`) VALUES
(1, 'Abacavir/kamivudine-oral', 'Abacavir and lamivudine combination is used together with other medicines to treat human immunodeficiency virus (HIV) infection. HIV is the virus that causes acquired immune deficiency syndrome (AIDS).', 2, 500000, 885, '2020-12-11 13:34:17'),
(2, 'ABACAVIR-ORAL', 'Abacavir is used together with other medicines to treat human immunodeficiency virus (HIV) infection. HIV is the virus that causes acquired immunodeficiency syndrome (AIDS).', 2, 2000, 100, '2020-12-11 13:34:17'),
(3, 'Abatacept', 'Abatacept, sold under the brand name Orencia, is a medication used to treat autoimmune diseases like rheumatoid arthritis, by interfering with the immune activity of T cells. It is a modified antibody.', 2, 2000, 100, '2020-12-11 13:34:17'),
(4, 'Abbokinase (UROKINASE-INJECTION)', 'Urokinase is a thrombolytic (THROM-bo-LIT-ik) drug, sometimes called a \"clot-busting\" drug. It helps your body produce a substance that dissolves unwanted blood clots. Urokinase is used to treat blood clots in the lungs.', 4, 2000, 100, '2020-12-11 13:34:17'),
(5, 'Abelcet (amphotericin/lipid complex injection)', 'It is an antifungal medication used for serious fungal infections and leishmaniasis. The fungal infections it is used to treat include aspergillosis, blastomycosis, candidiasis, coccidioidomycosis, and cryptococcosis. For certain infections it is given with flucytosine.', 4, 2000, 100, '2020-12-11 13:34:17'),
(6, 'Abilify (ARIPIPRAZOLE-ORAL)', 'It is primarily used in the treatment of schizophrenia and bipolar disorder. Other uses include as an add-on treatment in major depressive disorder, tic disorders and irritability associated with autism.', 2, 2000, 100, '2020-12-11 13:34:17'),
(7, 'Ablify (aripiprazole)', 'It is primarily used in the treatment of schizophrenia and bipolar disorder. Other uses include as an add-on treatment in major depressive disorder, tic disorders and irritability associated with autism.', 2, 2000, 100, '2020-12-11 13:34:17'),
(8, 'Acarbose', 'Acarbose (INN) is an anti-diabetic drug used to treat diabetes mellitus type 2 and, in some countries, prediabetes', 2, 2000, 100, '2020-12-11 13:34:17'),
(9, 'ACARBOSE-ORAL', 'Acarbose (INN) is an anti-diabetic drug used to treat diabetes mellitus type 2 and, in some countries, prediabetes', 2, 2000, 100, '2020-12-11 13:34:17'),
(10, 'Accolate', 'It is used to control and prevent symptoms (such as wheezing and shortness of breath) caused by asthma. Controlling symptoms of asthma helps you maintain your normal activities and cuts down on time lost from work or school. This medication must be used regularly to be effective.', 2, 2000, 100, '2020-12-11 13:34:17'),
(11, 'Activase (alteplase)', 'It is an enzyme, which works to break up and dissolve blood clots that can block arteries, used in the treatment of an acute heart attack or pulmonary embolism.', 2, 2000, 100, '2020-12-11 13:34:17'),
(12, 'Actonel (risedronate)', 'It is a bisphosphonate used to strengthen bone, treat or prevent osteoporosis, and treat Paget\'s disease of bone. It is taken by mouth.', 2, 2000, 100, '2020-12-11 13:34:17'),
(13, 'Actoxumab-injection', 'Actoxumab is a human monoclonal antibody designed for the prevention of recurrence of Clostridium difficile infection.', 4, 2000, 100, '2020-12-11 13:34:17'),
(14, 'Acyclovir', 'It is an antiviral medication. It is primarily used for the treatment of herpes simplex virus infections, chickenpox, and shingles. Other uses include prevention of cytomegalovirus infections following transplant and severe complications of Epstein-Barr virus infection', 2, 2000, 100, '2020-12-11 13:34:17'),
(15, 'ACYCLOVIR-INJECTION', 'It is an antiviral medication. It is primarily used for the treatment of herpes simplex virus infections, chickenpox, and shingles. Other uses include prevention of cytomegalovirus infections following transplant and severe complications of Epstein-Barr virus infection', 2, 2000, 100, '2020-12-11 13:34:17'),
(16, 'ACYCLOVIR-ORAL', 'It is an antiviral medication. It is primarily used for the treatment of herpes simplex virus infections, chickenpox, and shingles. Other uses include prevention of cytomegalovirus infections following transplant and severe complications of Epstein-Barr virus infection', 2, 2000, 100, '2020-12-11 13:34:17'),
(17, 'ACYCLOVIR-TOPICAL CREAM', 'It is an antiviral medication. It is primarily used for the treatment of herpes simplex virus infections, chickenpox, and shingles. Other uses include prevention of cytomegalovirus infections following transplant and severe complications of Epstein-Barr virus infection', 1, 2000, 100, '2020-12-11 13:34:17'),
(18, 'Adoxa (doxycycline)', 'It is a tetracycline antibiotic used to treat many different bacterial infections, such as urinary tract infections, acne, gonorrhea, and chlamydia, periodontitis (gum disease), and others. Adoxa is also used to treat blemishes, bumps, and acne-like lesions caused by rosacea.', 1, 2000, 100, '2020-12-11 13:34:17'),
(19, 'Adrenaline (epinephrine solution-inhalation)', 'Epinephrine, also known as adrenaline, is a medication and hormone. As a medication, it is used to treat a number of conditions, including anaphylaxis, cardiac arrest, asthma, and superficial bleeding. Inhaled epinephrine may be used to improve the symptoms of croup', 2, 2000, 100, '2020-12-11 13:34:17'),
(20, 'Bayer (acetylsalicylic)', 'Bayer ASPIRIN is an over the counter medicine used to reduce the risk of having a heart attack in people who have heart disease or to reduce the risk of stroke in people who have had a stroke or \"mini-stroke\". Bayer ASPIRIN may be used alone or with other medications.', 1, 2000, 100, '2020-12-11 13:34:17'),
(21, 'Bayer Children\'s Aspirin ( acetylsalicytic acid)', 'Bayer ASPIRIN is an over the counter medicine used to reduce the risk of having a heart attack in people who have heart disease or to reduce the risk of stroke in people who have had a stroke or \"mini-stroke\". Bayer ASPIRIN may be used alone or with other medications.', 1, 2000, 100, '2020-12-11 13:34:17'),
(22, 'Baycol (cerivastatin)', 'Cerivastatin is a synthetic member of the class of statins used to lower cholesterol and prevent cardiovascular disease. It was marketed by the pharmaceutical company Bayer A.G. in the late 1990s, competing with Pfizer\'s highly successful atorvastatin.', 2, 2000, 100, '2020-12-11 13:34:17'),
(23, 'bcg vaccine-chemotherapeutic', 'An effective immunization against tuberculosis. BCG stands for Bacille Calmette Guerin. BCG is a weakened (attenuated) version of a bacteria called Mycobacterium bovis which is closely related to Mycobacterium tuberculosis, the agent responsible for tuberculosis.', 4, 2000, 100, '2020-12-11 13:34:17'),
(24, 'Benazepril', 'Benazepril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. Benazepril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily.', 2, 2000, 100, '2020-12-11 13:34:17'),
(25, 'BENAZIPRIL-ORAL', 'Benazepril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. Benazepril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily.', 2, 2000, 100, '2020-12-11 13:34:17'),
(26, 'Benoxyl (benzoyl peroxide-topical)', 'Benzoyl peroxide works to treat and prevent acne by killing bacteria underneath the skin, as well as helping the pores shed dead skin cells and excess sebum (oil)', 1, 2000, 100, '2020-12-11 13:34:17'),
(27, 'Bentyl (dicyclomine', 'Dicycloverine, also known as dicyclomine, is a medication that is used to treat spasms of the intestines such as occur in irritable bowel syndrome. It is taken by mouth or by injection into a muscle. While it has been used in baby colic and enterocolitis, evidence does not support these uses', 2, 2000, 100, '2020-12-11 13:34:17'),
(28, 'Benzac', 'This medication is used to treat mild to moderate acne. It may be used in combination with other acne treatments. When applied to the skin, benzoyl peroxide works by reducing the amount of acne-causing bacteria and by causing the skin to dry and peel.', 1, 2000, 100, '2020-12-11 13:34:17'),
(29, 'Benzoin-topical', 'This product is used on minor skin sores and wounds to protect the area from irritation and infection. Benzoin is also used on canker sores in and around the mouth to protect them so they can heal.\r\n\r\nBenzoin is also used to help relieve and soothe minor irritation of the nose, throat, and airways (e.g., laryngitis, croup) when it is mixed with hot water and the steam is inhaled.\r\n', 1, 2000, 100, '2020-12-11 13:34:17'),
(30, 'Benzonatate', 'It is a medication used to try to help with the symptoms of cough and hiccups. It is taken by mouth. Use is not recommended in those under the age of ten. Effects generally begin within 20 minutes and last up to eight hours. ', 1, 2000, 100, '2020-12-11 13:34:17'),
(31, 'BENZONATATE-ORAL', 'It is a medication used to try to help with the symptoms of cough and hiccups. It is taken by mouth. Use is not recommended in those under the age of ten. Effects generally begin within 20 minutes and last up to eight hours. ', 1, 2000, 100, '2020-12-11 13:34:17'),
(32, 'Calamine lotion-topical', 'This medication is used to relieve pain, itching, and discomfort from minor skin irritations such as poison ivy, poison oak, and poison sumac. It also helps to dry the oozing and weeping caused by irritation due to these plants.', 2, 2000, 100, '2020-12-11 13:34:17'),
(33, 'Calan (verapamil)', 'Verapamil is used to treat high blood pressure. Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. Verapamil belongs to a class of drugs known as calcium channel blockers. It works by relaxing blood vessels so blood can flow more easily.', 2, 2000, 100, '2020-12-11 13:34:17'),
(34, 'Calan (verapamil-oral)', 'Verapamil is also used to prevent chest pain (angina). It may help to increase your ability to exercise and decrease how often you may get angina attacks. Verapamil is also used to control your heart rate if you have a fast/irregular heartbeat (such as atrial fibrillation). It helps to lower the heart rate, helping you to feel more comfortable and increase your ability to exercise.', 3, 2000, 100, '2020-12-11 13:34:17'),
(35, 'Calcitonin', 'This medication is used to treat certain bone problems (e.g., Paget\'s disease, postmenopausal osteoporosis) and to reduce high blood levels of calcium. Calcitonin is a man-made hormone that works by slowing bone loss and maintaining normal calcium levels in the blood. It may also help to reduce bone pain in people who have Paget\'s disease.', 3, 2000, 100, '2020-12-11 13:34:17'),
(36, 'Calcitrate (calcium salts)', 'This medication is used to prevent or treat low blood calcium levels in people who do not get enough calcium from their diets. It may be used to treat conditions caused by low calcium levels such as bone loss (osteoporosis), weak bones (osteomalacia/rickets), decreased activity of the parathyroid gland (hypoparathyroidism), and a certain muscle disease (latent tetany). It may also be used in certain patients to make sure they are getting enough calcium (e.g., women who are pregnant, nursing, or postmenopausal, people taking certain medications such as phenytoin, phenobarbital, or prednisone).', 3, 2000, 100, '2020-12-11 13:34:17'),
(37, 'Cangrelor', 'Cangrelor is used is used during percutaneous coronary intervention (PCI) for reducing the risk of heart attacks, repeat coronary revascularization, and stent thrombosis (ST) in patients who have not been treated with another P2Y12 platelet inhibitor and are not receiving a glycoprotein IIb/IIIa inhibitor,', 2, 2000, 100, '2020-12-11 13:34:17'),
(38, 'Cantil (mepenzolate-oral)', 'Mepenzolate is used with other medications to treat peptic ulcers. It works by decreasing the release of acid in the stomach.OTHER This section contains uses of this drug that are not listed in the approved professional labeling for the drug but that may be prescribed by your health care professional. Use this drug for a condition that is listed in this section only if it has been so prescribed by your health care professional.This drug may also be used with other medications to treat certain bowel disorders (e.g., irritable bowel syndrome). It works by decreasing the movement of the stomach/intestines', 2, 2000, 100, '2020-12-11 13:34:17'),
(39, 'Captopril-oral', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(40, 'Chloropromazine-injection', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(41, 'Chloropropamide', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(42, 'Chloroquine-injection', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(43, 'Chloroquine-oral', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(44, 'Eflornithine', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(45, 'Efudex', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(46, 'Egaten triclabendazole', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(47, 'Elestat (epinastine-ophthalmic)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(48, 'Elidel', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(49, 'Entacapone-oral', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(50, 'Entex (guaifenesin,phenylephrine)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(51, 'Entocort EC (budesonide)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(52, 'Maprotiline-oral', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(53, 'Maraviroc', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(54, 'Marinol (dronabinol-oral)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(55, 'Marplan (mao inhibitors-oral)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(56, 'Marthritic (salsalate)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(57, 'Maxalon (metoclopramide)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(58, 'Maxalt (rizatriptan tablet-oral)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(59, 'Meclomen (meclofenament)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(60, 'Megestrol', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(61, 'Memantine', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(62, 'Pamine', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(63, 'Panadol (ACETAMINOPHEN-ORAL)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(64, 'Pandel (hydrocortisone probutate-topical)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(65, 'Parnate (mao inhibitors-oral)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(66, 'Paxil CR (paroxetine)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:34:17'),
(67, 'Penicillins-injection', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(68, 'Penlac (ciclopirox)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(69, 'Pepcid AC (FAMOTIDINE)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(70, 'Ponstel (mefenamic acid-oral)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(71, 'Portalac (lactulose-oral)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(72, 'Prinivil (lisinopril)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(73, 'ProClick (interferon)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(74, 'Procrit (epoetin alfa)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(75, 'RANDITINE INJECTION', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(76, 'RANDITINE LIQUID-ORAL', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(77, 'RANDITINE TABLETS-ORAL', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(78, 'Rapamune (sirolimus tablets-oral)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(79, 'Rapinex (omeprazole)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(80, 'rasagiline', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(81, 'Razadyne ER (galantamine)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(82, 'Reminyl (galantamine)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(83, 'Renova (tretinon)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(84, 'Ribapak (ribavrin)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(85, 'Risperdal (risperidone)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(86, 'Rubraca (rucaparib)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(87, 'Rythmol (propafenone-oral)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(88, 'Yasmine 28 (ethinyl estradiol/drospirenone-oral)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(89, 'yocon (yohimbine-oral)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(90, 'Yodoxin (iodoquinol-oral)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(91, 'Yohimbe-oral', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(92, 'Yonsa abiraterone acetate', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(93, 'Yupelri revefenacin', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(94, 'ZIPRASIDONE-INJECTION', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(95, 'ZIPRASIDONE-ORAL', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(96, 'Zithromax (azithromycin)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(97, 'zithromx (AZITHROMYCIN-INJECTION)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(98, 'Zoladex (goserelin-injection)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(99, 'zoledronic acid', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(100, 'Zoledronic acid-injection', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(101, 'Zolmitriptan', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(102, 'Zolpimist (zolpidem)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(103, 'Zometa (zledronic acid-injection)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(104, 'Zomig (zomitriptan)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26'),
(105, 'Zonalon (DOXEPIN-TOPICAL CREAM)', 'Captopril is used to treat high blood pressure (hypertension). Lowering high blood pressure helps prevent strokes, heart attacks, and kidney problems. It is also used to treat heart failure, protect the kidneys from harm due to diabetes, and to improve survival after a heart attack.Captopril is an ACE inhibitor and works by relaxing blood vessels so that blood can flow more easily', 2, 2000, 100, '2020-12-11 13:36:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
