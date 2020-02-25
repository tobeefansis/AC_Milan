import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class DateTimePicker extends StatefulWidget {
  String _date;
  String _time;
  Function(String date, String time) onSelect;
  DateTimePicker(String date, String time, this.onSelect) {
    this._date = date;
    this._time = time;
  }
  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  String _date = "Not set";
  String _time = "Not set";
  Function(String date, String time) onSelect;

  @override
  void initState() {
    super.initState();
    _date = widget._date;
    _time = widget._time;
    onSelect = widget.onSelect;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          elevation: 4.0,
          onPressed: () {
            DatePicker.showDatePicker(context,
                theme: DatePickerTheme(
                  containerHeight: 210.0,
                ),
                showTitleActions: true,
                minTime: DateTime(2000, 1, 1),
                maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
                  String m = date.month.toString();
                  if (m.length==1) {
                    m="0$m";
                  }
              _date = '${date.year}-$m-${date.day}';
              onSelect(_date, _time);

              setState(() {});
            }, currentTime: DateTime.now(), locale: LocaleType.en);
            setState(() {});
          },
          child: Container(
            alignment: Alignment.center,
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.date_range,
                            size: 18.0,
                          ),
                          Text(
                            " $_date",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Text(
                  "  Change",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          elevation: 4.0,
          onPressed: () {
            DatePicker.showTimePicker(context,
                theme: DatePickerTheme(
                  containerHeight: 210.0,
                ),
                showTitleActions: true, onConfirm: (time) {
                  String m = time.minute.toString();
                  if (m.length==1) {
                    m="0$m";
                  }
                  String h = time.hour.toString();
                  if (h.length==1) {
                    h="0$h";
                  }
              _time = '$h:$m';
              onSelect(_date, _time);
              setState(() {});
            }, currentTime: DateTime.now(), locale: LocaleType.en);
            setState(() {});
          },
          child: Container(
            alignment: Alignment.center,
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            size: 18.0,
                          ),
                          Text(
                            " $_time",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Text(
                  "  Change",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
