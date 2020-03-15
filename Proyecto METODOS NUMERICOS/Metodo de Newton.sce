// This GUI file is generated by guibuilder version 4.2.1
//////////
f=figure('figure_position',[511,78],'figure_size',[656,582],'auto_resize','on','background',[-2],'figure_name','Graphic window number %d','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
//////////
handles.dummy = 0;
handles.aceptarBtn=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.27125,0.6582288,0.23,0.07],'Relief','default','SliderStep',[0.01,0.1],'String','Aceptar','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','aceptarBtn','Callback','aceptarBtn_callback(handles)')
handles.tabla=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.034375,0.0333333,0.9225,0.6175],'Relief','default','SliderStep',[0.01,0.1],'String','Tabla','Style','table','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','tabla','Callback','tabla_callback(handles)')
handles.x0text=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.26875,0.9071587,0.2265625,0.0738007],'Relief','default','SliderStep',[0.01,0.1],'String','','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','x0text','Callback','')
handles.tauText=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.26875,0.8250554,0.2265625,0.0738007],'Relief','default','SliderStep',[0.01,0.1],'String','','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','tauText','Callback','')
handles.funcionText=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.26875,0.742952,0.2265625,0.0738007],'Relief','default','SliderStep',[0.01,0.1],'String','','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','funcionText','Callback','')
handles.funcionLbl=uicontrol(f,'unit','normalized','BackgroundColor',[1,1,1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.03125,0.7435424,0.228125,0.0756458],'Relief','default','SliderStep',[0.01,0.1],'String','Introduzca la funcion:','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','funcionLbl','Callback','')
handles.tauLbl=uicontrol(f,'unit','normalized','BackgroundColor',[1,1,1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.03125,0.8253505,0.228125,0.0756458],'Relief','default','SliderStep',[0.01,0.1],'String','Introduzca el error:','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','tauLbl','Callback','')
handles.xLlb=uicontrol(f,'unit','normalized','BackgroundColor',[1,1,1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.03125,0.9071587,0.228125,0.0756458],'Relief','default','SliderStep',[0.01,0.1],'String','Introduzca el Xo:','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','xLlb','Callback','')


f.visible = "on";


//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////



function aceptarBtn_callback(handles)
    x0= eval(handles.x0text.string);
    tau=eval(handles.tauText.string);
    n=0;
    t= 0:1:12;
    funcion=handles.funcionText.string;
    funcion = strcat(['y=',funcion]);
    deff('y=g(x)',funcion);
    //plot(t,f(x),'color','r','linestyle',':','marker','>');
    params = ["Iteracion" "x0" "Error"];
    mprintf('\n Iteracion\t\t x0\t\t x1\t\t Error');
    disp(numderivative(g,x0));
    x1 = x0 - (g(x0)/numderivative(g,x0));
    errorReal = abs((x1-x0)/x1);
    itera = string([n]');
    pri = string([x0]');
    errors = string([" "]');
    tabla = [params; [itera pri errors]];
    n = n+1;
    itera = string([n]');
    pri = string([x1]');
    errors = string([errorReal]');
    tabla=cat(1,tabla,[itera pri errors]);
    mprintf('\n %0.4f\t\t %0.4f\t\t %0.4f\t\t %0.4f',n,x0,x1,errorReal);
    while (errorReal > tau)
        x0=x1;
        x1 = x0 - (g(x0)/numderivative(g,x0));
        disp(g(x0))
        disp(numderivative(g,x0))
        errorReal = abs((x1-x0)/x1);
        disp(x0)
        disp(x1)
        disp(errorReal)
        n = n+1;
        itera = string([n]');
        pri = string([x1]');
        errors = string([errorReal]');
        tabla=cat(1,tabla,[itera pri errors]);
        mprintf('\n %0.4f\t\t %0.4f\t\t %0.4f\t\t %0.4f',n,x0,x1,errorReal);
    end
    handles.tabla.string=tabla;
    printf('\n \n El valor con aproximacion %f es de: %f en la %f iteracion \n',tau,x1,n);
    //10^-5
    //x^2-2*x*%e^(-x)+%e^(-2*x)   valor entre 0 y 1
    //cos(x+2^(1/2))+x*(x/2+2^(1/2))  -2 a -1
    //x^3-3*x^2*(2^(-x))+3*x*(4^(-x))-8^(-x)    0 a 1
    //%e^(6*x)+3*(log(2))^2*%e^(2*x)-(log(8))*%e^(4*x)-(log(2))^3      -1 a 0
endfunction


function tabla_callback(handles)
//Write your callback for  tabla  here

endfunction


