function CT03_panel_control(h,panel_control)
%CT02_PANEL_CONTROL Summary of this function goes here
%   Detailed explanation goes here
    %% Tabs 
    tabgp = uitabgroup(panel_control,                       ...
                       'Units','normalize',                 ...
                       'Position',[0.00 0.00 0.875 1],       ...
                       'Tag','Tab');          
                   
                   
   color = [ 0 0 0.75];
                
   %% Beacon Based               
   tab_beacon_based_sgn   = uitab(tabgp,'Title','Beacon Based','Tag','Beacon Based');
   tab_beacon_based_sgn.ForegroundColor = color;

        uicontrol('style','popupmenu',              ...
                  'String',{'RSS','ToF','AoA'},     ...
                  'Units','normalized',             ...
                  'Position',[0.0250 0.4 0.15 0.2], ...
                  'Parent',tab_beacon_based_sgn,    ...
                  'Tag','popupmenu',                ...
                  'Callback',{@popupmenu_type_beacon,h});
                     
                          
        uicontrol('style','text','Parent',tab_beacon_based_sgn,'Units','normalized','Position',[0.27 0.05 0.1 0.6],'String','Event2msFcn:')
        uicontrol('style','listbox','Parent',tab_beacon_based_sgn,'Units','normalized','Position',[0.37 0.1 0.22 0.8],'Tag','listbox','Tag','Event2msFcn:','Callback',{@openfile_listbox,h})
        %
        h.javacomponets.trajectory_layer.addFcnBeaconBased    = add_btn('Parent',tab_beacon_based_sgn,    ...
                                                                'Position',[0.6 0.6 0.025 0.3],           ...
                                                                'Callback',{@addFcnlistbox,h},          ...
                                                                'Tag','addFcnBeacons');
        h.javacomponets.trajectory_layer.minusFcnBeaconBased    = minus_btn('Parent',tab_beacon_based_sgn,  ...
                                                                'Position',[0.6 0.2 0.025 0.3],           ...
                                                                'Callback',{@minusFcnlistbox,h},        ...
                                                                'Tag','minusFcnBeacons');
                                                            
        uicontrol('style','text','Parent',tab_beacon_based_sgn,'Units','normalized','Position',[0.69 0.05  0.1 0.6],'String','Frecuency:')
        uicontrol('style','edit','Parent',tab_beacon_based_sgn,'Units','normalized','Position',[0.79 0.275 0.04 0.4],'Tag','Frecuency:','String','5')
        uicontrol('style','text','Parent',tab_beacon_based_sgn,'Units','normalized','Position',[0.84 0.05  0.025 0.6],'String','Hz')

   %% Beacon Free
   tab_beacon_free_sgn    = uitab(tabgp,'Title','Beacon Free','Tag','Beacon Free');
   tab_beacon_free_sgn.ForegroundColor  = color;

        uicontrol('style','popupmenu',                      ...
                  'String',{'Barometer','InertialCoM','InertialFoot','Magnetometer'},  ...
                  'Units','normalized',                     ...
                  'Position',[0.0250 0.4 0.15 0.2],         ...
                  'Parent',tab_beacon_free_sgn,            ...
                  'Tag','popupmenu',                        ...
                  'Callback',{@popupmenu_type_beacon,h});
                     
                          
        uicontrol('style','text','Parent',tab_beacon_free_sgn,'Units','normalized','Position',[0.27 0.05 0.1 0.6],'String','Event2msFcn:')
        uicontrol('style','listbox','Parent',tab_beacon_free_sgn,'Units','normalized','Position',[0.37 0.1 0.22 0.8],'Tag','listbox','Tag','Event2msFcn:','Callback',{@openfile_listbox,h})
        %
        h.javacomponets.trajectory_layer.addFcnBeaconFree    = add_btn('Parent',tab_beacon_free_sgn,    ...
                                                                'Position',[0.6 0.6 0.025 0.3],           ...
                                                                'Callback',{@addFcnlistbox,h},          ...
                                                                'Tag','addFcnFree');
        h.javacomponets.trajectory_layer.minusFcnBeaconFree    = minus_btn('Parent',tab_beacon_free_sgn,  ...
                                                                'Position',[0.6 0.2 0.025 0.3],           ...
                                                                'Callback',{@minusFcnlistbox,h},        ...
                                                                'Tag','minusFcnFree');
                                                            
        uicontrol('style','text','Parent',tab_beacon_free_sgn,'Units','normalized','Position',[0.69 0.05  0.1 0.6],'String','Frecuency:')
        uicontrol('style','edit','Parent',tab_beacon_free_sgn,'Units','normalized','Position',[0.79 0.275 0.04 0.4],'Tag','Frecuency:','String','5')
        uicontrol('style','text','Parent',tab_beacon_free_sgn,'Units','normalized','Position',[0.84 0.05  0.025 0.6],'String','Hz')

   
           
    %% Generation Button       
    generation_panel = uipanel(panel_control,'Units','normalize',                ...
                       'Position',[0.875 0.02 0.125 0.96],      ...
                       'Title','Generation',            ...
                       'Tag','SignalType');   
                   
       uicontrol('Style','pushbutton',                  ...
                 'Parent',generation_panel,             ...
                 'String','Generate',                   ...
                 'Units','normalized',                  ...
                 'Position',[0.1 0.325 0.8 0.35],         ...
                 'Callback',{@generationSignalCalback,h})

            
end


