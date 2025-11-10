------------------------------------------------------------
-- 02_constraints.sql
-- Foreign Keys and Additional Constraints
------------------------------------------------------------

------------------------------------------------------------
-- PHOENIX_DAILY_MEAL_ITEM
------------------------------------------------------------
ALTER TABLE PHOENIX_DAILY_MEAL_ITEM
  ADD CONSTRAINT FK_PHOENIX_DMI_MENU
  FOREIGN KEY (MENU_ID)
  REFERENCES PHOENIX_MENU (MENU_ID)
  DISABLE;

------------------------------------------------------------
-- PHOENIX_MENU_ITEM_MAP
------------------------------------------------------------
ALTER TABLE PHOENIX_MENU_ITEM_MAP
  ADD CONSTRAINT FK_PHOENIX_MENUITEM_MENU
  FOREIGN KEY (MENU_ID)
  REFERENCES PHOENIX_MENU (MENU_ID)
  DISABLE;

ALTER TABLE PHOENIX_MENU_ITEM_MAP
  ADD CONSTRAINT FK_PHOENIX_MENUITEM_PRODUCT
  FOREIGN KEY (PRODUCT_ID)
  REFERENCES PHOENIX_PRODUCT (PRODUCT_ID)
  ENABLE;

ALTER TABLE PHOENIX_MENU_ITEM_MAP
  ADD CONSTRAINT FK_PHOENIX_MENUITEM_UOM
  FOREIGN KEY (UOM_ID)
  REFERENCES PHOENIX_UOM (UOM_ID)
  ENABLE;

------------------------------------------------------------
-- PHOENIX_PARTICIPANTS
------------------------------------------------------------
ALTER TABLE PHOENIX_PARTICIPANTS
  ADD CONSTRAINT FK_PARTICIPANTS_EMP
  FOREIGN KEY (EMP_CODE)
  REFERENCES PHOENIX_HR_EMP_MASTER (EMP_CODE)
  DISABLE;

------------------------------------------------------------
-- PHOENIX_PRODUCT
------------------------------------------------------------
ALTER TABLE PHOENIX_PRODUCT
  ADD CONSTRAINT FK_PHOENIX_PRODUCT_UOM
  FOREIGN KEY (UOM_ID)
  REFERENCES PHOENIX_UOM (UOM_ID)
  ENABLE;
