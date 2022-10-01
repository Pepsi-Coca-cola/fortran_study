real :: a,b,c,d,f
integer,parameter :: t = 7292
real,parameter :: pi = 4. * atan(1.)

open(1, file='01.dat')

write(*,*) ' t= ' , t
write(*,*)'pi=' , pi

do i = -90,90,1
    a= i*1.0
    write(*,*)a
    f = 2. * (t * 0.001) * sin(a*pi/180.)
    write(1,*)f,i
end do

end