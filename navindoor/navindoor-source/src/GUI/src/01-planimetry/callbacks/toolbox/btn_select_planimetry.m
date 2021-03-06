function btn_select_planimetry(object,event,h)
%BTN_HAND_PLANIMETRY Summary of this function goes here
%   Detailed explanation goes here
    h.iur_figure.Pointer = 'circle';
    h.zoom_iurfigure.Enable = 'off';
    h.pan_iurfigure.Enable = 'off' ;
    
   h.javacomponets.planimetry_layer.btn_select.setSelected(1)
   
   listbox_levels = findobj_figure(h.iur_figure,'Planimetry','Levels','listbox');
   
   unselect(h.planimetry_layer(listbox_levels.Value).nodes)
   unselect(h.planimetry_layer(listbox_levels.Value).doors)
   unselect(h.planimetry_layer(listbox_levels.Value).walls)
   unselect(h.planimetry_layer(listbox_levels.Value).stairs)
   unselect(h.planimetry_layer(listbox_levels.Value).elevators)
   unselect(h.planimetry_layer(listbox_levels.Value).beacons)

   update_planimetry_layer(h,'replot',true)
end

