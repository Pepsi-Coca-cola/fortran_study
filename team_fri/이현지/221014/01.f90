      integer,dimension(6,4)::a
      integer,dimension(6)::L
      integer,dimension(4)::M
      open(1,file='num.dat',status='old')
      open(2,file='ans.dat')
      do i=1,4,1
            do j = 1,6,1
                     read(1,10)a(j,i)
            end do
      end do
10    format(i3)
      do i=1,6,1
            L(i)=0
            do j=1,4,1
                  L(i)=L(i)+a(i,j)
            end do
      end do
      do i = 1,4,1
               M(i)=0
               do j = 1,6,1
                        M(i)=M(i)+a(j,i)
               end do
      end do
      do i = 1,5,1
      write(2,20)(a(i,j),j=1,4,1),L(i)
20    format(3(i3,1x,'+',1x),i3,1x,'=',1x,i5/4(1x'+',4x))
      end do
      write(2,25)(a(6,j),j=1,4,1),L(6)
25    format(3,(i3,1x,'+',1x),i3,1x,'=',1x,i5/4(1x,'=',4x))
      write(2,30)(M(i),i=1,4,1)
30    format(4(i4,2x))
