import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class ProviderCountExample extends StatefulWidget {
  const ProviderCountExample({Key? key}) : super(key: key);

  @override
  State<ProviderCountExample> createState() => _ProviderCountExampleState();
}

class _ProviderCountExampleState extends State<ProviderCountExample> {
  @override
  Widget build(BuildContext context) {
    /*第三步 使用共享数据
    我们定义了一个counter变量来获取到共享的数据，更新数据的方法直接通过counter.increment()，获取数据的方法通过counter.count.toString()来获取
     */

    final counter = Provider.of<CountNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider demo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.increment();
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          counter.count.toString(),
          style: const TextStyle(
            color: Colors.red,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
