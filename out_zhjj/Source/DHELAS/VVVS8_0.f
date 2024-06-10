C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     P(1,4)*P(2,3)*P(3,1) - P(1,3)*P(2,4)*P(3,2) +
C      P(1,3)*P(2,1)*P(3,4) - P(1,2)*P(2,3)*P(3,4) +
C      P(-1,3)*P(-1,4)*P(3,1)*Metric(1,2) -
C      P(-1,3)*P(-1,4)*P(3,2)*Metric(1,2) -
C      P(-1,1)*P(-1,3)*P(3,4)*Metric(1,2) +
C      P(-1,2)*P(-1,3)*P(3,4)*Metric(1,2) -
C      P(-1,3)*P(-1,4)*P(2,1)*Metric(1,3) -
C      P(-1,1)*P(-1,4)*P(2,3)*Metric(1,3) -
C      P(-1,2)*P(-1,4)*P(2,3)*Metric(1,3) +
C      P(-1,2)*P(-1,3)*P(2,4)*Metric(1,3) +
C      P(-1,3)*P(-1,4)*P(1,2)*Metric(2,3) +
C      P(-1,1)*P(-1,4)*P(1,3)*Metric(2,3) +
C      P(-1,2)*P(-1,4)*P(1,3)*Metric(2,3) -
C      P(-1,1)*P(-1,3)*P(1,4)*Metric(2,3)
C     
      SUBROUTINE VVVS8_0(V1, V2, V3, S4, COUP,VERTEX)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      REAL*8 P1(0:3)
      REAL*8 P2(0:3)
      REAL*8 P3(0:3)
      REAL*8 P4(0:3)
      COMPLEX*16 S4(*)
      COMPLEX*16 TMP0
      COMPLEX*16 TMP1
      COMPLEX*16 TMP10
      COMPLEX*16 TMP11
      COMPLEX*16 TMP12
      COMPLEX*16 TMP13
      COMPLEX*16 TMP14
      COMPLEX*16 TMP15
      COMPLEX*16 TMP16
      COMPLEX*16 TMP2
      COMPLEX*16 TMP3
      COMPLEX*16 TMP4
      COMPLEX*16 TMP5
      COMPLEX*16 TMP6
      COMPLEX*16 TMP7
      COMPLEX*16 TMP8
      COMPLEX*16 TMP9
      COMPLEX*16 V1(*)
      COMPLEX*16 V2(*)
      COMPLEX*16 V3(*)
      COMPLEX*16 VERTEX
      P1(0) = DBLE(V1(1))
      P1(1) = DBLE(V1(2))
      P1(2) = DIMAG(V1(2))
      P1(3) = DIMAG(V1(1))
      P2(0) = DBLE(V2(1))
      P2(1) = DBLE(V2(2))
      P2(2) = DIMAG(V2(2))
      P2(3) = DIMAG(V2(1))
      P3(0) = DBLE(V3(1))
      P3(1) = DBLE(V3(2))
      P3(2) = DIMAG(V3(2))
      P3(3) = DIMAG(V3(1))
      P4(0) = DBLE(S4(1))
      P4(1) = DBLE(S4(2))
      P4(2) = DIMAG(S4(2))
      P4(3) = DIMAG(S4(1))
      TMP0 = (V3(3)*P1(0)-V3(4)*P1(1)-V3(5)*P1(2)-V3(6)*P1(3))
      TMP1 = (V2(3)*P3(0)-V2(4)*P3(1)-V2(5)*P3(2)-V2(6)*P3(3))
      TMP10 = (P3(0)*P4(0)-P3(1)*P4(1)-P3(2)*P4(2)-P3(3)*P4(3))
      TMP11 = (P1(0)*P3(0)-P1(1)*P3(1)-P1(2)*P3(2)-P1(3)*P3(3))
      TMP12 = (P3(0)*P2(0)-P3(1)*P2(1)-P3(2)*P2(2)-P3(3)*P2(3))
      TMP13 = (V3(3)*V1(3)-V3(4)*V1(4)-V3(5)*V1(5)-V3(6)*V1(6))
      TMP14 = (P1(0)*P4(0)-P1(1)*P4(1)-P1(2)*P4(2)-P1(3)*P4(3))
      TMP15 = (P4(0)*P2(0)-P4(1)*P2(1)-P4(2)*P2(2)-P4(3)*P2(3))
      TMP16 = (V3(3)*V2(3)-V3(4)*V2(4)-V3(5)*V2(5)-V3(6)*V2(6))
      TMP2 = (V1(3)*P4(0)-V1(4)*P4(1)-V1(5)*P4(2)-V1(6)*P4(3))
      TMP3 = (V3(3)*P2(0)-V3(4)*P2(1)-V3(5)*P2(2)-V3(6)*P2(3))
      TMP4 = (V2(3)*P4(0)-V2(4)*P4(1)-V2(5)*P4(2)-V2(6)*P4(3))
      TMP5 = (P3(0)*V1(3)-P3(1)*V1(4)-P3(2)*V1(5)-P3(3)*V1(6))
      TMP6 = (V3(3)*P4(0)-V3(4)*P4(1)-V3(5)*P4(2)-V3(6)*P4(3))
      TMP7 = (P1(0)*V2(3)-P1(1)*V2(4)-P1(2)*V2(5)-P1(3)*V2(6))
      TMP8 = (V1(3)*P2(0)-V1(4)*P2(1)-V1(5)*P2(2)-V1(6)*P2(3))
      TMP9 = (V2(3)*V1(3)-V2(4)*V1(4)-V2(5)*V1(5)-V2(6)*V1(6))
      VERTEX = COUP*S4(3)*(TMP9*(TMP10*(-CI*(TMP0)+CI*(TMP3))+TMP6*(
     $ +CI*(TMP11)-CI*(TMP12)))+(TMP1*(TMP13*(+CI*(TMP14+TMP15))+(-CI
     $ *(TMP0*TMP2)+CI*(TMP6*TMP8)))+(TMP16*(TMP5*(-1D0)*(+CI*(TMP14
     $ +TMP15))+(-CI*(TMP8*TMP10)+CI*(TMP2*TMP11)))+(TMP13*(+CI*(TMP7
     $ *TMP10)-CI*(TMP4*TMP12))+TMP5*(+CI*(TMP3*TMP4)-CI*(TMP6*TMP7))))
     $ ))
      END


