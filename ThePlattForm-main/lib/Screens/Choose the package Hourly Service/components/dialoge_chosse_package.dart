
import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Contract%20Data/contract_data_view.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/components/custom_circle_exit/custom_circle_avatar_dialog.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:table_calendar/table_calendar.dart';

class DialogeChossePackage extends StatefulWidget {
  const DialogeChossePackage({super.key});

  @override
  State<DialogeChossePackage> createState() => _DialogeChossePackageState();
}

class _DialogeChossePackageState extends State<DialogeChossePackage> {
    DateTime _selectedDay = DateTime.now();  // Initial selected date
  DateTime _focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 50),
                Text('اختيار تاريخ اول زيارة', style: TextStyles.semiBold18),
                const SizedBox(height: 20),
                TableCalendar(
                  firstDay: DateTime.utc(2020, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;  
                      _focusedDay = focusedDay;  
                    });
                  },
                  calendarFormat: CalendarFormat.month,
                  startingDayOfWeek: StartingDayOfWeek.saturday,
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                  ),
                  calendarStyle: const CalendarStyle(
                    selectedDecoration: BoxDecoration(
                      color: Colors.black,  
                      shape: BoxShape.circle,
                    ),
                    todayDecoration: BoxDecoration(
                      color: Colors.grey,  
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                  const SizedBox(height: 20,),
                  CustomButtonInAddNewAddrease(
                    onTap: () {
                      
                     Navigator.pushNamed(context, ContractDataView.routeName);
                    },
                                          alignment: Alignment.centerRight, 
                                          colorBackGround: Colors.black, 
                                          tixtInButton:  Center(
                                          child: Text('التالي',
                                          style: TextStyles.regular18.copyWith(color:  Colors.white),
                                          ),
                                          ), width: 108,
                                          height: 47, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8),
                                        ), 
                          const SizedBox(height: 30,),
                                      ],
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  top: 125,
                                  child: CustomCircleAvatar(),
                                ),
                              ],
                            );
                          }
                        }
