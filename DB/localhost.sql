-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Lug 20, 2016 alle 02:32
-- Versione del server: 5.6.29-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_hyp16`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `device`
--

CREATE TABLE IF NOT EXISTS `device` (
  `ID` int(11) NOT NULL,
  `Marca` text,
  `Modello` text,
  `IMG` text,
  `Descrizione` text,
  `Tech` text,
  `Offerta` tinyint(1) NOT NULL DEFAULT '0',
  `New` tinyint(1) NOT NULL DEFAULT '0',
  `Categoria` text,
  `Prezzo` double NOT NULL,
  `SL1` tinyint(1) NOT NULL DEFAULT '0',
  `SL2` tinyint(1) NOT NULL DEFAULT '0',
  `SL3` tinyint(1) NOT NULL DEFAULT '0',
  `SL4` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `device`
--

INSERT INTO `device` (`ID`, `Marca`, `Modello`, `IMG`, `Descrizione`, `Tech`, `Offerta`, `New`, `Categoria`, `Prezzo`, `SL1`, `SL2`, `SL3`, `SL4`) VALUES
(0, 'Samsung', 's7', 'http://hyp16.altervista.org/img/s7', 'Sistema Operativo Android 6.0<br>\r\nDisplay 5.1<br>Processore OctaCore(QuadCore 2.3GHZ+QuadCore 1.6GHZ)<br>', 'Tecnologia\r\n4G cat.9/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100\r\n<br>\r\nConnettivita\r\nWi-Fi - Bluetooth - Micro USB - NFC\r\n<br>\r\nGPS\r\nIntegrato\r\n<br>\r\nDisplay\r\n5.1 16 Milioni colori Touch\r\n<br>\r\nFotocamera\r\n12 Mpixel/Flash\r\n<br>\r\nMemoria Interna\r\n32GB\r\n<br>\r\nProcessore\r\nOctaCore (QuadCore 2.3GHZ+QuadCore 1.6GHZ)\r\n<br>\r\nFormato SIM\r\nNano\r\n<br>\r\nIn dotazione\r\nCaricabatteria - Cavo Dati MicroUSB - Auricolare stereo - Manuale d uso rapido\r\n<br>\r\nDimensioni\r\n142,4x69,6x7,9 mm\r\n<br>\r\nPeso\r\n152 gr.\r\n<br>\r\nAutonomia(*)\r\nStand-by fino a TBD ore - Conversazione fino a TBD min\r\n<br>', 0, 0, 'smartphone', 729.9, 1, 1, 1, 1),
(4, 'Samsung', 'Smart TV 50', 'http://hyp16.altervista.org/img/samsung_smart_tv_50JU6400', 'TIMvision incluso<br>', 'Modello 50JU6400 - 50<br>\r\nUltra HD - 4K 3840 x 2160<br>\r\nSoundbar HW-J250 inclusa<br>', 0, 0, 'TV', 899, 1, 0, 0, 0),
(2, 'Apple', 'iPad Pro 9.7" 256 GB', 'http://hyp16.altervista.org/img/ipadPro128', 'Display Retina da 9,7 (diagonale) con True Tone e rivestimento antiriflesso<br>\r\nChip A9 con architettura a 64 bit di livello desktop<br>\r\nSensore di impronte digitali Touch ID<br>\r\nFotocamera iSight da 12MP con video a 4K<br>\r\nVideocamera FaceTime HD (foto da 5MP)<br>', 'Sistema Operativo iOS 9\r\nDisplay Retina da 9,7 (diagonale) con True Tone e rivestimento antiriflesso\r\nChip A9X di terza generazione con architettura a 64 bit di livello desktop\r\nSensore di impronte digitali Touch ID\r\nFotocamera iSight da 12MP con video a 4K\r\nDisplay\r\nRetina Display 9,7 (diagonale) con True Tone e rivestimento antiriflesso\r\n<br>\r\nSensori\r\nimpronte digitali Touch ID\r\n<br>\r\nProcessore\r\nChip A9X di terza generazione con architettura a 64 bit di livello desktop\r\n<br>\r\nFotocamera\r\niSight da 12MP con video a 4K\r\n<br>\r\nVideocamera\r\nFaceTime HD (foto da 5MP)\r\n<br>\r\nConnettivita\r\n4G LTE Advanced1, Wi-Fi 802.11ac con tecnologia MIMO\r\n<br>\r\nBatteria\r\nFino a 10 ore di autonomia2', 1, 0, 'Tablet/PC', 1199.9, 1, 1, 1, 1),
(3, 'TIM', 'Modem Wi-Fi Car Pack 4G', 'http://hyp16.altervista.org/img/ModemWiFiCarPack4G', 'Acquista il nuovo Car Pack e potrai connetterti anche quando sei in viaggio.', 'Modem WI-FI CarPack4G<br>\r\nCodice PIN promozionale per 6 mesi di <br>Servizi Assistenza ACI Global\r\nAlimentatore da rete<br>\r\nAlimentatore da auto<br>', 0, 1, 'Modem', 99.99, 0, 0, 1, 0),
(1, 'Sony', 'XPERIA X', 'http://hyp16.altervista.org/img/xperiax', 'Uno smartphone dalle prestazioni inimitabili che integra una sensazionale fotocamera in grado di predire il prossimo movimento del soggetto..', 'Sistema Operativo<br>BAu', 0, 1, 'smartphone', 629.9, 1, 1, 1, 1),
(5, 'Apple', 'iPhone 6s', 'http://hyp16.altervista.org/img/iphone6s', '4GPLUS<br>\r\nDisplay Retina HD da 4,7(diagonale) con risoluzione di 1334x750 px<br>\r\n3D Touch<br>\r\nChip A9 con coprocessore di movimento M9 integrato<br>\r\nFotocamera iSight da 12 megapixel con Focus Pixels, True Tone Flash e Live Photos<br>\r\niOS 9 e iCloud<br>', 'Display<br>\r\nDisplay Retina HD da 4,7 (diagonale) con risoluzione di 1334x750 pixel<br>\r\n3D Touch<br>\r\n<br>\r\nProcessore<br>\r\nChip A9 con coprocessore di movimento M9 integrato<br>\r\n<br>\r\nFotocamera<br>\r\nFotocamera iSight da 12 megapixel con Focus Pixels, True Tone Flash e Live Photos<br>\r\n<br>\r\nRegistrazione video<br>\r\nRegistrazione video 4K a 30 fps, moviola (1080p) a 120 fps\r\n<br><br>\r\nVideocamera\r\nVideocamera FaceTime HD con Retina Flash (foto da 5MP)\r\n<br><br>\r\nSensori\r\nTouch ID di seconda generazione\r\n<br><br>\r\nConnettivita\r\n4G LTE Advanced1 e Wi-Fi 802.11a/b/g/n/ac con tecnologia MIMO\r\n<br><br>\r\nSistemaOperativo\r\niOS 9 e iCloud\r\n<br><br>\r\nColori\r\nColori: argento, oro, grigio siderale, oro rosa\r\n', 0, 0, 'smartphone', 789.9, 1, 1, 1, 1),
(6, 'LG', 'G5', 'http://hyp16.altervista.org/img/g5', 'Sistema Operativo Android 6.0<br>\r\nDisplay 5.3<br>\r\nProcessore Snapdragon 820 QuadCore 2.15 GHz - 4G LTE<br>', '\r\nDisplay\r\n5.3 16 Milioni colori Touch\r\n<br><br>\r\nFotocamera\r\n2 Fotocamere Posteriori da 16 Mpxl con flash e Fotocamera frontale 8 Mpx\r\n<br><br>\r\nMemoria Interna\r\n32GB\r\nSlot Memory Card Micro SD fino a 2TB\r\n<br><br>\r\nDimensioni\r\n149,4x73,9x7,3 mm\r\n<br><br>\r\nPeso\r\n159 gr.\r\n<br><br>\r\n', 0, 0, 'smartphone', 699.9, 1, 1, 1, 1),
(7, 'Samsung', 'J5', 'http://hyp16.altervista.org/img/j5', 'Sistema Operativo Android 5.1<br>\r\nDisplay 5.2 16 Milioni colori Touch<br>\r\nProcessore QuadCore 1.2 Ghz<br>', 'Display\r\nDisplay 5.2 16 Milioni colori Touch\r\n<br><br>\r\nFotocamera\r\nFotocamera 13 Mpixel/Flash\r\n<br><br>\r\nMemoria\r\nMemoria interna 16GB - Slot Memory Card Micro SD fino a 128GB\r\n<br><br>\r\nProcessore\r\nProcessore QuadCore 1.2 Ghz\r\n<br><br>\r\nFormato SIM\r\nSIM Micro<br><br>\r\n', 1, 0, 'smartphone', 269.9, 1, 1, 1, 1),
(8, 'Huawei', 'P9 Plus', 'http://hyp16.altervista.org/img/p9', 'Sistema Operativo Android 6.0<br>\r\nDisplay IPS Full HD da 5.2<br>\r\nDoppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl<br>\r\nProcessore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', 'Display\r\nDisplay IPS Full HD da 5.2\r\n<br><br>\r\nFotocamera\r\nPrincipale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual-tone Frontale 8MP, f/2.4\r\n<br><br>\r\nMemoria Interna\r\n32GB\r\n<br><br>\r\nProcessore\r\nProcessore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)\r\n<br><br>\r\nIn dotazione\r\nSmartphone Auricolari stereo - Caricabatteria Cavo USB Type-C - Estrattore SIM Guida rapida', 0, 1, 'smartphone', 749.9, 1, 1, 1, 1),
(9, 'Huawei', 'T1', 'http://hyp16.altervista.org/img/t1', 'Display 9.6 PS<BR>\r\nSistema Operativo Android 4.4<BR>\r\nProcessore Snapdragon 200 QuadCore 1.2 GHz<BR>', 'Memoria\r\n8GB (espandibile fino a 64GB)\r\n<BR><BR>\r\nProcessore\r\nQuad-core 1.2GHz\r\n<BR><BR>\r\nSistemaOperativo\r\nAndroidTM 4.4 KitKat\r\n<BR><BR>\r\nApplicazioni\r\nGoogle Mobile Services, Youtube, E-mail, GPS e A-GPS, SMS, Invio e ricezione, chiamata voce.\r\n<BR><BR>', 0, 0, 'Tablet/PC', 249.9, 1, 1, 1, 1),
(10, 'Samsung', 'Galaxy TabPro S 12', 'http://hyp16.altervista.org/img/galaxytabpros12', 'Display 12 FHD+, 2160x1440 SuperAmoled<br>\r\nSistema Operativo Windows 10 Pro<br>\r\nMemoria interna 128GB SSD<br>\r\nFotocamera (Front: 5 MP AF, Back: 5 MP )<br>', 'Display\r\nDisplay 12 FHD+, 2160x1440 SuperAmoled\r\n<br>\r\nDimensioni\r\n290.3x198.8x6.3 mm\r\n<br>\r\nPeso\r\n698 gr\r\n<br>\r\nAutonomia\r\n600 minuti\r\n<br>\r\nFotocamera\r\nFotocamera (Front: 5 MP Back: 5 MP)\r\n<br>\r\nFormati supportati\r\nVideo: MP4,3GP,WMV,ASF,AVI,MKV\r\nAudio: MP3,AAC,WAV,WMA,AMR,FLAC\r\n<br>\r\nMemoria\r\n128GB SSD, 4GB di Ram\r\n<br>\r\nProcessore\r\nProcessore Intel Core M3 (Dualcore 2.2 GHz)\r\n<br>\r\nSistemaOperativo\r\nWindows 10 Pro', 0, 1, 'Tablet/PC', 1299.9, 1, 1, 1, 1),
(11, 'Huawei', 'MediaPad 10 LINK+', 'http://hyp16.altervista.org/img/mediapad10', 'Display 9.6 PS<br>\r\nSistema Operativo Android 4.4<br>\r\nProcessore Snapdragon 200 QuadCore 1.2 GHz<br>', 'Display\r\n9.6 (1280x800) IPS 16M di colori\r\n<br><br>\r\nVideo/Audio/Picture\r\n2 Fotocamera da 5 Mpx e VGA Lettore multimediale - MP3, WAV, 3GP, AAC, AAC+ e-AAC+, JPG, PNG,GIF, BMP, WMV, H264, Mpeg4, 1080p/30fps\r\n<br><br>\r\nMemoria\r\n8GB (espandibile fino a 64GB)\r\n<br><br>\r\nProcessore\r\nQuad-core 1.2GHz\r\n<br><br>\r\nSistemaOperativo\r\nAndroid 4.4 KitKat\r\n<br><br>\r\nDimensioni\r\n248,5 x 150 x8,3 mm\r\n<br><br>\r\nPeso\r\n433 grammi', 1, 0, 'Tablet/PC', 199.9, 1, 1, 1, 1),
(12, 'D-Link', 'Cloud Wireless', 'http://hyp16.altervista.org/img/dlink', 'Tecnologia wireless N<br>\r\nLED a infrarossi integrati<br>\r\nAccesso tramite Internet<br>\r\nVideo VGA 480p<br>', 'Capacita Pan/Tilt\r\n360/120 gradi\r\n<br><br>\r\nDesign\r\ncompatto\r\n<br><br>\r\nMemoria\r\nSlot per scheda MicroSD (non inclusa) per storage di registrazioni audio e video\r\n<br><br>\r\nRegistrazione\r\nVideo in definizione VGA (480p) e immagini compresse in H.264\r\n<br><br>\r\nConnettivita\r\nTecnologia Wireless N-Pulsante Wireless security con Wi-Fi Protected Setup (WPS)\r\n<br><br>\r\nLED\r\nLED InfraRossi per vision notturna fino a 8m\r\n<br><br>\r\nSensori\r\nSensore PIR (Passive Infrared) per rilevazione movimenti\r\n<br><br>\r\nAvanzate\r\nInvio di e-mail in caso di movimento rilevato\r\n<br><br>\r\nMicrofono\r\nMicrofono integrato\r\n<br><br>\r\nCloud\r\nmydlink Cloud Services\r\n', 0, 0, 'Telecamere', 99.9, 0, 0, 1, 0),
(13, 'TIM', '4G Wi-Fi', 'http://hyp16.altervista.org/img/4gwifi', '1 Modem 4G WI-FI<br>\r\n1 mese di INTERNET 4G LTE<br>', 'Tecnologia\r\n4G-DC-HSDPA-HSPA+-HSDPA-HSUPA-EDGE/GPRS\r\n<br><br>\r\nContenuto della Confezione\r\nModem 4G Wi-Fi-TIM Card con 5 euro di traffico prepagato incluso-Alimentatore da rete-Cavo USB-Guida rapida\r\n<br><br>', 0, 0, 'Modem', 79.9, 0, 0, 1, 0),
(14, 'TIM', 'Vision', 'http://hyp16.altervista.org/img/decodertim', 'Android TV<br>\r\n4K Ready<br>\r\nTelecomando bluetooth con voice recognition\r\nDigitale terrestre integrato<br>', 'SistemaOperativo\r\nAndroid TV 5.1.1\r\n<br><br>\r\nProcessore\r\nCPU high level Marvell BG4CT(14K DMIPS)\r\n<br><br>\r\nMemoria\r\nFLASH 8GB-2 GB DDR3 2133 MHz-Lettore di schede SD\r\n<br><br>\r\nConnettivita\r\n2x2 802.11 ac Dual Band-Wi-Fi a 5ghz 11ac-supporto GoogleCast-USB 3.0-BT 4.1-Ethernet 100 BT\r\n<br><br>\r\nSupporto formati video\r\n4K-H 265\r\n<br><br>\r\nDVB-T2\r\nSingle Tuner\r\n<br><br>\r\nDRM Playready 2.5\r\nSi\r\n<br><br>\r\nHEVC (HW support)\r\nSi\r\n<br><br>\r\nAdaptative protocol\r\nSi\r\n<br><br>\r\nSD card reader\r\nSi\r\n<br><br>\r\nVideo output\r\nHDMI 2.0/HDCP 2.2\r\n<br><br>\r\nAudio Output\r\nUscita audio ottica SPDIF\r\n<br><br>\r\nRemote control\r\nIR+BT con Microfono\r\n<br><br>\r\nIn dotazione\r\nTelecomando evoluto (voice recognition e collegamento bluetooth)\r\n<br><br>\r\nContenuto della confezione\r\nDecoder-Cavo alimentazione-Cavo HDMI-Telecomando universale-Batterie -Guida rapida all''installazione', 0, 1, 'Decoder', 109, 1, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
