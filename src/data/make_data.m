TSIM = [1:1:10];

% AA's -
ALA = xlsread('Ala.xls');
IALA = interp1(ALA(:,1),ALA(:,2),TSIM);
save -ascii Ala.dat ALA;

ASN = xlsread('Asn.xls');
IASN=interp1(ASN(:,1),ASN(:,2),TSIM);
save -ascii Asn.dat ASN;

ASP = xlsread('Asp.xls');
IASP = interp1(ASP(:,1),ASP(:,2),TSIM);
save -ascii Asp.dat ASP;

CYS = xlsread('Cys.xls');
ICYS = interp1(CYS(:,1),CYS(:,2),TSIM);
save -ascii Cys.dat CYS;

GLN = xlsread('Gln.xls');
IGLN = interp1(GLN(:,1),GLN(:,2),TSIM);
save -ascii Gln.dat GLN;

GLY = xlsread('Gly.xls');
IGLY = interp1(GLY(:,1),GLY(:,2),TSIM);
save -ascii Gly.dat GLY;

HIS = xlsread('His.xls');
IHIS = interp1(HIS(:,1),HIS(:,2),TSIM);
save -ascii His.dat HIS;

ILE = xlsread('Ile.xls');
IILE = interp1(ILE(:,1),ILE(:,2),TSIM);
save -ascii Ile.dat ILE;

LEU = xlsread('Leu.xls');
ILEU = interp1(LEU(:,1),LEU(:,2),TSIM);
save -ascii Leu.dat LEU;

LYS = xlsread('Lys.xls');
ILYS = interp1(LYS(:,1),LYS(:,2),TSIM);
save -ascii Lys.dat LYS;

MET = xlsread('Met.xls');
IMET = interp1(MET(:,1),MET(:,2),TSIM);
save -ascii Met.dat MET;

PHE = xlsread('Phe.xls');
IPHE = interp1(PHE(:,1),PHE(:,2),TSIM);
save -ascii Phe.dat PHE;

PRO = xlsread('Pro.xls');
IPRO = interp1(PRO(:,1),PRO(:,2),TSIM);
save -ascii Pro.dat PRO;

SER = xlsread('Ser.xls');
ISER = interp1(SER(:,1),SER(:,2),TSIM);
save -ascii Ser.dat SER;

THR = xlsread('Thr.xls');
ITHR = interp1(THR(:,1),THR(:,2),TSIM);
save -ascii Thr.dat THR;

TRP = xlsread('Trp.xls');
ITRP = interp1(TRP(:,1),TRP(:,2),TSIM);
save -ascii Trp.dat TRP;

TYR = xlsread('Tyr.xls');
ITYR = interp1(TYR(:,1),TYR(:,2),TSIM);
save -ascii Tyr.dat TYR;

VAL = xlsread('Val.xls');
IVAL = interp1(VAL(:,1),VAL(:,2),TSIM);
save -ascii Val.dat VAL;

% Energy species -
ATP = xlsread('ATP.xls');
IATP = interp1(ATP(:,1),ATP(:,2),TSIM);
save -ascii ATP.dat ATP;

ADP = xlsread('ADP.xls');
IADP = interp1(ADP(:,1),ADP(:,2),TSIM);
save -ascii ADP.dat ADP;

AMP = xlsread('AMP.xls');
IAMP = interp1(AMP(:,1),AMP(:,2),TSIM);
save -ascii AMP.dat AMP;

CTP = xlsread('CTP.xls');
ICTP = interp1(CTP(:,1),CTP(:,2),TSIM);
save -ascii CTP.dat CTP;

CDP = xlsread('CDP.xls');
ICDP = interp1(CDP(:,1),CDP(:,2),TSIM);
save -ascii CDP.dat CDP;

CMP = xlsread('CMP.xls');
ICMP = interp1(CMP(:,1),CMP(:,2),TSIM);
save -ascii CMP.dat CMP;

GTP = xlsread('GTP.xls');
IGTP = interp1(GTP(:,1),GTP(:,2),TSIM);
save -ascii GTP.dat GTP;

GDP = xlsread('GDP.xls');
IGDP = interp1(GDP(:,1),GDP(:,2),TSIM);
save -ascii GDP.dat GDP;

GMP = xlsread('GMP.xls');
IGMP = interp1(GMP(:,1),GMP(:,2),TSIM);
save -ascii GMP.dat GMP;

UTP = xlsread('UTP.xls');
IUTP = interp1(UTP(:,1),UTP(:,2),TSIM);
save -ascii UTP.dat UTP;

UDP = xlsread('UDP.xls');
IUDP = interp1(UDP(:,1),UDP(:,2),TSIM);
save -ascii UDP.dat UDP;

UMP = xlsread('UMP.xls');
IUMP = interp1(UMP(:,1),UMP(:,2),TSIM);
save -ascii UMP.dat UMP;

% Organic acids -
GLC = load('Glucose.dat');
IGLC = interp1(GLC(:,1),GLC(:,2),TSIM);
save -ascii Glucose.dat GLC;

LAC = load('Lactate.txt');
ILAC = interp1(LAC(:,1),LAC(:,2),TSIM);
save -ascii Lactate.dat LAC;

SUCC = load('Succinate.dat');
ISUCC = interp1(SUCC(:,1),SUCC(:,2),TSIM);
save -ascii Succinate.dat SUCC;

MAL = load('Malate.dat');
IMAL = interp1(MAL(:,1),MAL(:,2),TSIM);
save -ascii Malate.dat MAL;

AC = load('Acetate.dat');
IAC = interp1(AC(:,1),AC(:,2),TSIM);
save -ascii Acetate.dat AC;

PYR = load('Pyruvate.dat');
IPYR = interp1(PYR(:,1),PYR(:,2),TSIM);
save -ascii Pyruvate.dat PYR;

% Product -
CAT = xlsread('CAT.xls');
ICAT = interp1(CAT(:,1),CAT(:,2),TSIM);
save -ascii CAT.dat CAT;
