MicroButtonAndBagsBar:RegisterForDrag("LeftButton")
MicroButtonAndBagsBar:SetScript("OnDragStart", MicroButtonAndBagsBar.StartMoving)
MicroButtonAndBagsBar:SetScript("OnDragStop", MicroButtonAndBagsBar.StopMovingOrSizing)

MicroButtonAndBagsBar:SetMovable(true)
MicroButtonAndBagsBar:EnableMouse(true)
MicroButtonAndBagsBar:SetScript("OnMouseDown", function(self, button)
  if button == "LeftButton" and not self.isMoving then
   self:StartMoving();
   self.isMoving = true;
  end
end)
MicroButtonAndBagsBar:SetScript("OnMouseUp", function(self, button)
  if button == "LeftButton" and self.isMoving then
   self:StopMovingOrSizing();
   self.isMoving = false;
  end
end)
MicroButtonAndBagsBar:SetScript("OnHide", function(self)
  if ( self.isMoving ) then
   self:StopMovingOrSizing();
   self.isMoving = false;
  end
end)