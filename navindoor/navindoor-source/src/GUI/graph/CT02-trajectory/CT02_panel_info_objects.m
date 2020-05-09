function CT02_panel_info_objects(h,panel_info)
%CT02_PANEL_INFO_OBJECTS Summary of this function goes here
%   Detailed explanation goes here

    %% Has Velocity
    text_has_velocity = uicontrol('style','text','Parent',panel_info,            ...
                                           'String','Generate:',         ...
                                           'Units','normalized',             ...
                                           'Position',[0.05 0.45 0.3 0.4]);
                                       
                                       
    edit_has_velocity = uicontrol('style','text','Parent',panel_info,      ...
                                           'String',' ',                     ...
                                           'Units','normalized',             ...
                                           'Position',[0.45 0.565 0.45 0.25],  ...
                                           'Tag','Generate:',            ...
                                           'Enable','on');
                                       
    %% Label 
    text_label = uicontrol('style','text','Parent',panel_info,             ...
                                           'String','Label:',                ...
                                           'Units','normalized',             ...
                                            'Position',[0.05 0.1 0.3 0.3]);
                                        
    edit_label = uicontrol('style','edit','Parent',panel_info,                        ...
                                           'String',' ',                                ...
                                           'Units','normalized',                        ...
                                           'Position',[0.45 0.165 0.45 0.25],             ...
                                           'Callback',{@edit_label_straj_Callback,h},   ...
                                           'Tag','Label:');                                        

end

