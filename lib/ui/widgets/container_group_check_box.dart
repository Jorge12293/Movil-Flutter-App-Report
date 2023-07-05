import 'package:app_report/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';

class ContainerGroupCheckBox extends StatefulWidget {
  final String title;
  final List<String> listOption;
  final Function handleSaveListOptions;
  final double width;
  final double height;
  const ContainerGroupCheckBox({
    super.key,
    required this.title,
    required this.listOption,
    required this.handleSaveListOptions,
    required this.width,
    required this.height,
  });

  @override
  State<ContainerGroupCheckBox> createState() => _ContainerGroupCheckBoxState();
}

class _ContainerGroupCheckBoxState extends State<ContainerGroupCheckBox> {
  List<String> selectedOptions = [];
  bool selectAll = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            const SizedBox(height: 5),
            Text(widget.title,
              style: const TextStyle(fontWeight: FontWeight.bold)),
            const Divider(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: const Text('Marcar Todo',style: const TextStyle(fontSize: 11))
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10),
                  child: Checkbox(
                    activeColor: AppColors.contentColorGreen,
                    value: selectAll,
                    onChanged: (bool? value) {
                      setState(() {
                        selectAll = value!;
                        if (selectAll) {
                          selectedOptions = List.from(widget.listOption);
                        } else {
                          selectedOptions.clear();
                        }
                      });
                      widget.handleSaveListOptions(selectedOptions);
                    },
                  )
                ),
              ],
          ),
          const Divider(height: 1),
          SizedBox(
            height: widget.height,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: widget.listOption.length,
                itemBuilder: (BuildContext context, int index) {
                  return CheckboxListTile(
                    activeColor: AppColors.contentColorGreen,
                    title: Text(widget.listOption[index],
                            style: const TextStyle(fontSize: 10) ),
                    value: selectedOptions.contains(widget.listOption[index]),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value!) {
                          selectedOptions.add(widget.listOption[index]);
                        } else {
                          selectedOptions.remove(widget.listOption[index]);
                        }
                        selectAll = selectedOptions.length == widget.listOption.length;
                      });
                      widget.handleSaveListOptions(selectedOptions);
                    },
                  );
                },
              ),
            )
          ],
        ),
      )
    );
  }
}