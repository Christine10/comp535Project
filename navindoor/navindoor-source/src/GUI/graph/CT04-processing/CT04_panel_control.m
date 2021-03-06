function CT04_panel_control(h,panel_algorithms)
%CT04_PANEL_CONTROL Summary of this function goes here
%   Detailed explanation goes here

    %% Engine funtions 

    uicontrol('style','text','Parent',panel_algorithms,'Units','normalized','Position',[0.05 0.1 0.2 0.6],'String',{'Tracking','Algorithms:'})
    uicontrol('style','listbox','Parent',panel_algorithms,'Units','normalized','Position',[0.275 0.1 0.37 0.8],'Tag','listbox','Tag','listbox','Callback',{@openfile_listbox,h})
    %
    h.javacomponets.processing_layer.addFcnBeaconBased    = add_btn('Parent',panel_algorithms,    ...
                                                            'Position',[0.66 0.6 0.04 0.3],           ...
                                                            'Callback',{@addFcnlistbox,h},          ...
                                                            'Tag','addAlgorithms');
    h.javacomponets.processing_layer.minusFcnBeaconBased    = minus_btn('Parent',panel_algorithms,  ...
                                                            'Position',[0.66 0.2 0.04 0.3],           ...
                                                            'Callback',{@minusFcnlistbox,h},        ...
                                                            'Tag','minusAlgorithms');

    
  %% Compute!
        uicontrol('Style','pushbutton',             ...
                  'Parent',panel_algorithms,           ...
                  'Units','normalized',             ...
                  'Position',[0.75 0.55 0.15 0.3],   ...
                  'String','Compute!',              ...
                  'Callback',{@btnComputeCallback,h});
              
    %% Animation
         uicontrol('Style','pushbutton',             ...
                   'Parent',panel_algorithms,           ...
                   'Units','normalized',             ...
                   'Position',[0.75 0.225 0.15 0.3],   ...
                   'String','Animation',             ...
                   'Tag','Animation',                ...
                   'Callback',{@animationProcessingCallback,h});            
end

