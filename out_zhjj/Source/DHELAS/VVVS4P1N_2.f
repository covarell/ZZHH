C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     -(P(1,2)*P(2,4)*P(3,1)) + P(1,4)*P(2,1)*P(3,2) +
C      P(-1,2)*P(-1,4)*P(3,1)*Metric(1,2) -
C      P(-1,1)*P(-1,4)*P(3,2)*Metric(1,2) -
C      P(-1,2)*P(-1,4)*P(2,1)*Metric(1,3) +
C      P(-1,1)*P(-1,2)*P(2,4)*Metric(1,3) +
C      P(-1,1)*P(-1,4)*P(1,2)*Metric(2,3) -
C      P(-1,1)*P(-1,2)*P(1,4)*Metric(2,3)
C     
      SUBROUTINE VVVS4P1N_2(V1, V3, S4, COUP,V2)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      REAL*8 P1(0:3)
      REAL*8 P2(0:3)
      REAL*8 P4(0:3)
      COMPLEX*16 S4(*)
      COMPLEX*16 TMP0
      COMPLEX*16 TMP13
      COMPLEX*16 TMP14
      COMPLEX*16 TMP15
      COMPLEX*16 TMP2
      COMPLEX*16 TMP23
      COMPLEX*16 TMP3
      COMPLEX*16 TMP8
      COMPLEX*16 V1(*)
      COMPLEX*16 V2(6)
      COMPLEX*16 V3(*)
      P1(0) = DBLE(V1(1))
      P1(1) = DBLE(V1(2))
      P1(2) = DIMAG(V1(2))
      P1(3) = DIMAG(V1(1))
      P4(0) = DBLE(S4(1))
      P4(1) = DBLE(S4(2))
      P4(2) = DIMAG(S4(2))
      P4(3) = DIMAG(S4(1))
      V2(1) = +V1(1)+V3(1)+S4(1)
      V2(2) = +V1(2)+V3(2)+S4(2)
      P2(0) = -DBLE(V2(1))
      P2(1) = -DBLE(V2(2))
      P2(2) = -DIMAG(V2(2))
      P2(3) = -DIMAG(V2(1))
      TMP0 = (V3(3)*P1(0)-V3(4)*P1(1)-V3(5)*P1(2)-V3(6)*P1(3))
      TMP13 = (V3(3)*V1(3)-V3(4)*V1(4)-V3(5)*V1(5)-V3(6)*V1(6))
      TMP14 = (P1(0)*P4(0)-P1(1)*P4(1)-P1(2)*P4(2)-P1(3)*P4(3))
      TMP15 = (P4(0)*P2(0)-P4(1)*P2(1)-P4(2)*P2(2)-P4(3)*P2(3))
      TMP2 = (V1(3)*P4(0)-V1(4)*P4(1)-V1(5)*P4(2)-V1(6)*P4(3))
      TMP23 = (P1(0)*P2(0)-P1(1)*P2(1)-P1(2)*P2(2)-P1(3)*P2(3))
      TMP3 = (V3(3)*P2(0)-V3(4)*P2(1)-V3(5)*P2(2)-V3(6)*P2(3))
      TMP8 = (V1(3)*P2(0)-V1(4)*P2(1)-V1(5)*P2(2)-V1(6)*P2(3))
      V2(3)= COUP*S4(3)*(P1(0)*(-CI*(TMP2*TMP3)+CI*(TMP13*TMP15))
     $ +(P4(0)*(+CI*(TMP0*TMP8)-CI*(TMP13*TMP23))+(TMP14*(+CI*(V1(3)
     $ *TMP3)-CI*(V3(3)*TMP8))+(-CI*(V1(3)*TMP0*TMP15)+CI*(V3(3)*TMP2
     $ *TMP23)))))
      V2(4)= COUP*S4(3)*(P1(1)*(+CI*(TMP2*TMP3)-CI*(TMP13*TMP15))
     $ +(P4(1)*(-CI*(TMP0*TMP8)+CI*(TMP13*TMP23))+(TMP14*(-CI*(V1(4)
     $ *TMP3)+CI*(V3(4)*TMP8))+(+CI*(V1(4)*TMP0*TMP15)-CI*(V3(4)*TMP2
     $ *TMP23)))))
      V2(5)= COUP*S4(3)*(P1(2)*(+CI*(TMP2*TMP3)-CI*(TMP13*TMP15))
     $ +(P4(2)*(-CI*(TMP0*TMP8)+CI*(TMP13*TMP23))+(TMP14*(-CI*(V1(5)
     $ *TMP3)+CI*(V3(5)*TMP8))+(+CI*(V1(5)*TMP0*TMP15)-CI*(V3(5)*TMP2
     $ *TMP23)))))
      V2(6)= COUP*S4(3)*(P1(3)*(+CI*(TMP2*TMP3)-CI*(TMP13*TMP15))
     $ +(P4(3)*(-CI*(TMP0*TMP8)+CI*(TMP13*TMP23))+(TMP14*(-CI*(V1(6)
     $ *TMP3)+CI*(V3(6)*TMP8))+(+CI*(V1(6)*TMP0*TMP15)-CI*(V3(6)*TMP2
     $ *TMP23)))))
      END


C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     -(P(1,2)*P(2,4)*P(3,1)) + P(1,4)*P(2,1)*P(3,2) +
C      P(-1,2)*P(-1,4)*P(3,1)*Metric(1,2) -
C      P(-1,1)*P(-1,4)*P(3,2)*Metric(1,2) -
C      P(-1,2)*P(-1,4)*P(2,1)*Metric(1,3) +
C      P(-1,1)*P(-1,2)*P(2,4)*Metric(1,3) +
C      P(-1,1)*P(-1,4)*P(1,2)*Metric(2,3) -
C      P(-1,1)*P(-1,2)*P(1,4)*Metric(2,3)
C     
      SUBROUTINE VVVS4_7P1N_2(V1, V3, S4, COUP1, COUP2,V2)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP1
      COMPLEX*16 COUP2
      REAL*8 P1(0:3)
      REAL*8 P2(0:3)
      REAL*8 P4(0:3)
      COMPLEX*16 S4(*)
      COMPLEX*16 V1(*)
      COMPLEX*16 V2(6)
      COMPLEX*16 V3(*)
      COMPLEX*16 VTMP(6)
      INTEGER*4 I
      CALL VVVS4P1N_2(V1,V3,S4,COUP1,V2)
      CALL VVVS7P1N_2(V1,V3,S4,COUP2,VTMP)
      DO I = 3, 6
        V2(I) = V2(I) + VTMP(I)
      ENDDO
      END


