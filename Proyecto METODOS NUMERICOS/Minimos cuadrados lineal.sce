// This GUI file is generated by guibuilder version 4.2.1
//////////
f=figure('figure_position',[-8,-8],'figure_size',[1552,840],'auto_resize','on','background',[-2],'figure_name','INTERPOLACION DE LAGRANGE','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
//////////
handles.dummy = 0;
handles.titulo=uicontrol(f,'unit','normalized','BackgroundColor',[1,1,1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[22],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0,0.912439,0.999349,0.0948509],'Relief','raised','SliderStep',[0.01,0.1],'String','APROXIMACION DISCRETA DE MINIMOS CUADRADOS','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','titulo','Callback','')
handles.parteIngresos=uicontrol(f,'unit','normalized','BackgroundColor',[1,1,1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','pixels','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0013021,0.0177473,0.2527083,0.8710027],'Relief','groove','SliderStep',[0.01,0.1],'String','Entradas','Style','frame','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','parteIngresos','Callback','')
handles.tituloIngresos=uicontrol(f,'unit','normalized','BackgroundColor',[1,1,1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.076224,0.8575,0.1054688,0.055],'Relief','default','SliderStep',[0.01,0.1],'String','Ingresos','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','tituloIngresos','Callback','')
handles.xText=uicontrol(f,'unit','normalized','BackgroundColor',[1,1,1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0247396,0.765,0.0742187,0.05625],'Relief','default','SliderStep',[0.01,0.1],'String','Coordenadas en x:','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','xText','Callback','')
handles.yText=uicontrol(f,'unit','normalized','BackgroundColor',[1,1,1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0247396,0.6925,0.0742187,0.05625],'Relief','default','SliderStep',[0.01,0.1],'String','Coordenadas en y:','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','yText','Callback','')
handles.plano= newaxes();handles.plano.margins = [ 0 0 0 0];handles.plano.axes_bounds = [0.2896094,0.15,0.6915625,0.77125];
handles.tabla=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0036719,0.25375,0.2448958,0.3025],'Relief','default','SliderStep',[0.01,0.1],'String','Tabla','Style','table','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','tabla','Callback','tabla_callback(handles)')
handles.inPuntosX=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.1091927,0.765,0.108724,0.05625],'Relief','default','SliderStep',[0.01,0.1],'String','','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','inPuntosX','Callback','')
handles.inPuntosY=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.1091927,0.695,0.108724,0.05625],'Relief','default','SliderStep',[0.01,0.1],'String','','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','inPuntosY','Callback','')
handles.btnGenerar=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0853385,0.60375,0.0846354,0.04875],'Relief','default','SliderStep',[0.01,0.1],'String','Generar','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','btnGenerar','Callback','btnGenerar_callback(handles)')
handles.errorText=uicontrol(f,'unit','normalized','BackgroundColor',[1,1,1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0110677,0.07125,0.1835938,0.0575],'Relief','default','SliderStep',[0.01,0.1],'String','','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','errorText','Callback','')
handles.evalFText=uicontrol(f,'unit','normalized','BackgroundColor',[1,1,1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0110677,0.19,0.1835938,0.0575],'Relief','default','SliderStep',[0.01,0.1],'String','','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','evalFText','Callback','')
handles.evalPTExt=uicontrol(f,'unit','normalized','BackgroundColor',[1,1,1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0110677,0.130625,0.1835938,0.0575],'Relief','default','SliderStep',[0.01,0.1],'String','','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','evalPTExt','Callback','')


f.visible = "on";


//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////











function tabla_callback(handles)

endfunction


function btnGenerar_callback(handles)
    //1.3 3.5 4.2 5 7 8.8 10.1 12.5 13 15.6
    vecX=evstr(strcat(['[',handles.inPuntosX.string,']']));
    vecY=evstr(strcat(['[',handles.inPuntosY.string,']']));
    n=length(vecX);
    grado=1;
    sumaCol=0;
    titulo=string([1:grado*2+grado+1])
    colK=[1:n]
    vecSum=[1:grado*2+grado+1]
    titulo(1)='xi';
    titulo(2)='yi';
    vecSum(1)=sum(vecX)
    vecForMatriz=[1:grado*2]
    vecSum(2)=sum(vecY)
    subtabla = cat(1,colK,vecX,vecY);
    for i=2:grado*2
        titulo(i+1)=strcat(['xi^',string(i)])
        subtabla=cat(1,subtabla,vecX^i);
        vecSum(i+1)=sum(vecX^i);
    end
    for i=grado*2+1:1:grado*2+grado
        titulo(i+1)=strcat(['xi^',string(i-grado*2),'*yi'])
        subtabla=cat(1,subtabla,vecX^(i-grado*2).*vecY);
        vecSum(i+1)=sum(vecX^(i-grado*2).*vecY);
    end
    titulo=cat(2,['k'],titulo);
    colSumas=cat(2,['Σ'],string(vecSum));
    disp(titulo);
    disp(subtabla);
    tabla=cat(1,titulo,string(subtabla)',colSumas);
    handles.tabla.string=tabla;
    a0=(sum(vecX^2)*sum(vecY)-sum(vecX)*sum(vecX.*vecY))/(sum(vecX^2)*n-sum(vecX)^2)
    a1=(sum(vecX.*vecY)*n-sum(vecX)*sum(vecY))/(n*sum(vecX^2)-sum(vecX)^2)
    A=string(a0);
    B=string(a1);   
    polinomio="";
    x=poly(0,'x');   
    polinomio = strcat(['y=',A,'+',B,'*x']);
    deff('y=g(x)',polinomio);
    handles.evalFText.string=polinomio;
    sumError= sum(abs(g(vecX) - vecY)^2);
    xtitle(prettyprint(polinomio),"","")
    graf=vecX(1)-1:0.1:vecX(n)+1;
    plot(graf,g);
    scatter(vecX,vecY);
    //1.3 3.5 4.2 5 7 8.8 10.1 12.5 13 15.6
endfunction


