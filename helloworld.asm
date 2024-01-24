data segment;定义数据段
    output db 'Hello world! $' ;定义一个字符串，记得要以$为结束标志
data ends ;数据段结束  
code segment ;代码段定义开始
    assume ds:data,cs:code 
start: 
    mov ax,data ;实现段地址DATAS加载到DS  
    mov ds,ax

    mov dx,offset output  ;取STRING的偏移地址到DX中
    lea dx,output ;两种都可以
    mov ah,09h  ;调用9号功能调用输出字符串  
    int 21h

    mov ah,4ch  ;实现返回MOS-DOS窗口
    int 21h

code ends  ;代码段结束  
    end start   ;整个程序结束