C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     P(3,1)*Metric(1,2) - P(3,2)*Metric(1,2) - P(2,1)*Metric(1,3) +
C      P(2,3)*Metric(1,3) + P(1,2)*Metric(2,3) - P(1,3)*Metric(2,3)
C     
      SUBROUTINE VVV1_2(V1, V3, COUP, M2, W2,V2)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      COMPLEX*16 COUP
      REAL*8 M2
      REAL*8 OM2
      REAL*8 P1(0:3)
      REAL*8 P2(0:3)
      REAL*8 P3(0:3)
      COMPLEX*16 TMP0
      COMPLEX*16 TMP12
      COMPLEX*16 TMP13
      COMPLEX*16 TMP23
      COMPLEX*16 TMP3
      COMPLEX*16 TMP5
      COMPLEX*16 TMP8
      COMPLEX*16 V1(*)
      COMPLEX*16 V2(6)
      COMPLEX*16 V3(*)
      REAL*8 W2
      COMPLEX*16 DENOM
      P1(0) = DBLE(V1(1))
      P1(1) = DBLE(V1(2))
      P1(2) = DIMAG(V1(2))
      P1(3) = DIMAG(V1(1))
      OM2 = 0D0
      IF (M2.NE.0D0) OM2=1D0/M2**2
      P3(0) = DBLE(V3(1))
      P3(1) = DBLE(V3(2))
      P3(2) = DIMAG(V3(2))
      P3(3) = DIMAG(V3(1))
      V2(1) = +V1(1)+V3(1)
      V2(2) = +V1(2)+V3(2)
      P2(0) = -DBLE(V2(1))
      P2(1) = -DBLE(V2(2))
      P2(2) = -DIMAG(V2(2))
      P2(3) = -DIMAG(V2(1))
      TMP0 = (V3(3)*P1(0)-V3(4)*P1(1)-V3(5)*P1(2)-V3(6)*P1(3))
      TMP12 = (P3(0)*P2(0)-P3(1)*P2(1)-P3(2)*P2(2)-P3(3)*P2(3))
      TMP13 = (V3(3)*V1(3)-V3(4)*V1(4)-V3(5)*V1(5)-V3(6)*V1(6))
      TMP23 = (P1(0)*P2(0)-P1(1)*P2(1)-P1(2)*P2(2)-P1(3)*P2(3))
      TMP3 = (V3(3)*P2(0)-V3(4)*P2(1)-V3(5)*P2(2)-V3(6)*P2(3))
      TMP5 = (P3(0)*V1(3)-P3(1)*V1(4)-P3(2)*V1(5)-P3(3)*V1(6))
      TMP8 = (V1(3)*P2(0)-V1(4)*P2(1)-V1(5)*P2(2)-V1(6)*P2(3))
      DENOM = COUP/(P2(0)**2-P2(1)**2-P2(2)**2-P2(3)**2 - M2 * (M2 -CI
     $ * W2))
      V2(3)= DENOM*(OM2*P2(0)*(TMP13*(-CI*(TMP23)+CI*(TMP12))+(+CI
     $ *(TMP0*TMP8)-CI*(TMP3*TMP5)))+(TMP13*(+CI*(P1(0))-CI*(P3(0)))
     $ +(V1(3)*(-CI*(TMP0)+CI*(TMP3))+V3(3)*(-CI*(TMP8)+CI*(TMP5)))))
      V2(4)= DENOM*(OM2*P2(1)*(TMP13*(-CI*(TMP23)+CI*(TMP12))+(+CI
     $ *(TMP0*TMP8)-CI*(TMP3*TMP5)))+(TMP13*(+CI*(P1(1))-CI*(P3(1)))
     $ +(V1(4)*(-CI*(TMP0)+CI*(TMP3))+V3(4)*(-CI*(TMP8)+CI*(TMP5)))))
      V2(5)= DENOM*(OM2*P2(2)*(TMP13*(-CI*(TMP23)+CI*(TMP12))+(+CI
     $ *(TMP0*TMP8)-CI*(TMP3*TMP5)))+(TMP13*(+CI*(P1(2))-CI*(P3(2)))
     $ +(V1(5)*(-CI*(TMP0)+CI*(TMP3))+V3(5)*(-CI*(TMP8)+CI*(TMP5)))))
      V2(6)= DENOM*(OM2*P2(3)*(TMP13*(-CI*(TMP23)+CI*(TMP12))+(+CI
     $ *(TMP0*TMP8)-CI*(TMP3*TMP5)))+(TMP13*(+CI*(P1(3))-CI*(P3(3)))
     $ +(V1(6)*(-CI*(TMP0)+CI*(TMP3))+V3(6)*(-CI*(TMP8)+CI*(TMP5)))))
      END


